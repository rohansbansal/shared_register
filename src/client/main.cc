#include <hello.grpc.pb.h>

#include <grpc/grpc.h>
#include <grpcpp/create_channel.h>

#include <iostream>

int main() {
  hello::HelloRequest req;
  hello::HelloResponse res;
  req.set_name("Rohan");
  std::cout << "Hello World!\n";
  auto channel = grpc::CreateChannel("localhost:50051", grpc::InsecureChannelCredentials());
  std::unique_ptr<hello::Hello::Stub> stub = hello::Hello::NewStub(channel);
  grpc::ClientContext context;
  grpc::Status status = stub->SayHello(&context, req, &res);

  // Output result
  std::cout << "I got:" << std::endl;
  std::cout << "Response: " << res.response() << std::endl;
}

