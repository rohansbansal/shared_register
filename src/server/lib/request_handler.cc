#include <grpc/grpc.h>
#include <grpcpp/server_builder.h>

#include <requests.grpc.pb.h>

#include <iostream>

class RequestsService final : public requests::Requests::Service {
 public:
  virtual ::grpc::Status Read(::grpc::ServerContext* context, const ::requests::ReadRequest* req, ::requests::ReadResponse* res) {
    std::cout << "in handler\n";
    return grpc::Status::OK;
  }
};
