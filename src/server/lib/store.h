#include <memory>
#include <shared_mutex>
#include <string>
#include <unordered_map>

namespace store {

struct Value {
  std::string value;
  uint32_t version;
};

struct ValueMetadata {
  std::unique_ptr<Value> val;
  std::string prepare_val;
};

class Store {
 public:
  Value* Read(std::string address);

  void PrepareWrite(std::string address, std::string value);

  void Write(std::string address, std::string value);

  void Remove(std::string address)

 private:
  std::unordered_map<std::string, ValueMetadata> store_;
  std::unordered_map<std::string, std::shared_mutex> locks_;
};

}  // namespace store

