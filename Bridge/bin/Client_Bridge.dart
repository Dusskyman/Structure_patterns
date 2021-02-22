
import '../lib/Abstraction.dart';
import '../lib/ConcreteImplementationA.dart';
import '../lib/ConcreteImplementationB.dart';

class Client {
  void ClientCode(Abstraction abstraction) {
    print(abstraction.operation());
  }
}

main(List<String> args) {
  Client client = Client();
  Abstraction abstraction;

  abstraction = Abstraction(ConcreteImplementationA());
  client.ClientCode(abstraction);

  abstraction = Abstraction(ConcreteImplementationB());
  client.ClientCode(abstraction);
}
