#include <iostream>
#include <memory>
#include <shared_mutex>
#include <string>

#include "store.h"

namespace store {

Value* Store::Read(std::string address) {
  if (locks_.find(address) == locks_.end()) {
    return nullptr;
  }
  locks_[address].lock_shared();
  Value* res = store_[address].val.get(); 
  locks_[address].unlock_shared();
  return res;
}

void Store::PrepareWrite(std::string address, std::string value) {
}

void Store::Write(std::string address, std::string value) {

}


}  // namespace store

