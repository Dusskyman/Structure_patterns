import '../lib/AComponent.dart';
import '../lib/ConcreteComponent.dart';
import '../lib/ConcreteDecoratorA.dart';
import '../lib/ConcreteDecoratorB.dart';

class Client {
  void clientCode(AComponent acomponent) {
    print('Result: ${acomponent.operations()}');
  }
}

main(List<String> args) {
  Client client = Client();
  AComponent simple = ConcreteComponent();
  print('Client: I get a simple component:');
  client.clientCode(simple);
  ConcreteDecoratorA decoratorA = ConcreteDecoratorA(simple);
  ConcreteDecoratorB decoratorB = ConcreteDecoratorB(decoratorA);
  print('Now some decorated component:');
  client.clientCode(decoratorA);
  client.clientCode(decoratorB);
}
