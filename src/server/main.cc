#include "lib/node.h"
#include "lib/store.h"

#include <iostream>


int main(int argc, char const* argv[]) {
  store::Store store;
  node::Node node(0, 0, 50051);
  node.StartReplica();

  store.Read("Hello World");
  
  return 0;
}

