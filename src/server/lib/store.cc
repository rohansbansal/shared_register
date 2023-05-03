#include <iostream>
#include <memory>
#include <shared_mutex>
#include <string>

#include "store.h"

namespace store {

Value* Store::Read(std::string address) {
  if (store_.find(address) == store_.end()) {
    return nullptr;
  }
  store_[address].lock.lock_shared();
  Value* res = store_[address].val.get(); 
  store_[address].lock.unlock_shared();
  return res;
}

void Store::PrepareWrite(std::string address, std::string value) {
  if (store_.find(address) == store_.end()) {
    ValueMetadata metadata;
    metadata.lock.lock();
    metadata.prepare_val = value;
    metadata.lock.unlock();
    return;
  }
  // TODO: make this a lease based lock for availability
  store_[address].lock.lock();
  store_[address].prepare_val = value;
}

void Store::Write(std::string address, std::string value) {
  if (store_.find(address) == store_.end()) {
    // should return an error (use absl for absl::Status?)
    return;
  }
  if (!store_[address].val) {
    store_[address].val = std::make_unique<Value>();
    store_[address].val->value = value;
    store_[address].val->version = 0;
    store_[address].lock.unlock();
    return;
  }
  store_[address].val->value = value;
  store_[address].val->version++;
  store_[address].lock.unlock();
}

}  // namespace store

