import 'AComponent.dart';
import 'Decorator.dart';

class ConcreteDecoratorA extends Decorator {
  ConcreteDecoratorA(AComponent comp) : super(comp);
  @override
  String operations() {
    return 'ConcreteDecoratorA ${super.operations()}';
  }
}
