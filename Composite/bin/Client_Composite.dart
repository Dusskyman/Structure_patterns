import '../lib/Component.dart';
import '../lib/Composite.dart';
import '../lib/Leaf.dart';

class Client {
  void ClientCode(Component leaf) {
    print('Result: ${leaf.operation()}');
  }

  void ClientCodeA(Component component1, Component component2) {
    if (component1.isComposite()) {
      component1.add(component2);
    }
    print('Result: ${component1.operation()}');
  }
}

main(List<String> args) {
  Client client = Client();
  Leaf leaf = Leaf();
  print('Client get simple component:');
  client.ClientCode(leaf);

  Composite tree = Composite();
  Composite branch1 = Composite();
  branch1.add(Leaf());
  branch1.add(Leaf());
  Composite branch2 = Composite();
  branch2.add(Leaf());
  tree.add(branch1);
  tree.add(branch2);
  print('Client: Now got a composite tree:');
  client.ClientCode(tree);
  print(
      'Client: I dont need to check the components classes even when managing the tree:');
  client.ClientCodeA(tree, leaf);
}
