#include <requests.grpc.pb.h>

#include <grpc/grpc.h>
#include <grpcpp/create_channel.h>

#include <iostream>

int main() {
  requests::ReadRequest req;
  requests::ReadResponse res;
  auto channel = grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials());
  std::unique_ptr<requests::Requests::Stub> stub = requests::Requests::NewStub(channel);
  grpc::ClientContext context;
  grpc::Status status = stub->Read(&context, req, &res);
  std::cout << "Made Request!\n";
}

