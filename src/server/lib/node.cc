#include <grpc/grpc.h>
#include <grpcpp/server_builder.h>
#include "node.h"
#include "request_handler.cc"

#include <hello.grpc.pb.h>

#include <iostream>

namespace node {

namespace {
}  // namespace

void Node::StartReplica() {
  // start a grpc server
  grpc::ServerBuilder builder;
  builder.AddListeningPort("0.0.0.0:50051", grpc::InsecureServerCredentials());

  RequestsService req_service;
  builder.RegisterService(&req_service);

  std::unique_ptr<grpc::Server> server(builder.BuildAndStart());
  server->Wait();
}

}  // namespace node

