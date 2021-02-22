import 'AComponent.dart';
import 'Decorator.dart';

class ConcreteDecoratorB extends Decorator {
  ConcreteDecoratorB(AComponent comp) : super(comp);
  @override
  String operations() {
    return 'ConcreteDecoratorB ${super.operations()}';
  }
}
