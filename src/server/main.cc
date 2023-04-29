#include <grpc/grpc.h>
#include <grpcpp/server_builder.h>

#include <hello.grpc.pb.h>

#include <iostream>

class HelloService final : public hello::Hello::Service {
 public:
  virtual ::grpc::Status SayHello(::grpc::ServerContext* context, const ::hello::HelloRequest* request, ::hello::HelloResponse* response)
  {
      std::cout << "Server: GetAddress for \"" << request->name() << "\"." << std::endl;

      response->set_response("Hello World");
      
      return grpc::Status::OK;
  }
};

int main(int argc, char const* argv[]) {
  grpc::ServerBuilder builder;
  builder.AddListeningPort("0.0.0.0:50051", grpc::InsecureServerCredentials());

  HelloService my_service;
  builder.RegisterService(&my_service);

  std::unique_ptr<grpc::Server> server(builder.BuildAndStart());
  server->Wait();
  
  return 0;
}

