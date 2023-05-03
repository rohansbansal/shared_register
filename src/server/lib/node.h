#include <cinttypes>

namespace node {
class Node {
public:
  Node(uint32_t id, uint32_t num_replicas, uint32_t port)
      : id_(id), num_replicas_(num_replicas), port_(port) {}
  void StartReplica();

private:
  uint32_t id_;
  uint32_t num_replicas_;
  uint32_t port_;
};
} // namespace node

