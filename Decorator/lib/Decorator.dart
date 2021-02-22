import 'AComponent.dart';

abstract class Decorator implements AComponent {
  AComponent _acomponent;
  Decorator(this._acomponent);
  void setCompenent(AComponent acomponent) {
    this._acomponent = acomponent;
  }

  @override
  String operations() {
    if (this._acomponent != null) {
      return this._acomponent.operations();
    } else {
      return '';
    }
  }
}
