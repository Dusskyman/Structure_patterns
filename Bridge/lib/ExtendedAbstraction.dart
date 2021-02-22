import 'Abstraction.dart';
import 'Implemetation.dart';

class ExtendedAbstraction extends Abstraction {
  ExtendedAbstraction(Implemetation implemetation) : super(implemetation);
  Implemetation get _implemetation => _implemetation;
  @override
  String operation() {
    return 'ExtendedAbstration: Extended operation with: \n' +
        _implemetation.operationImplementation();
  }
}
