import 'StrageInterface.dart';
import 'BaseInterface.dart';

class Adapter extends BaseInterface {
  final StrageInterface _strageInterface;
  Adapter(this._strageInterface);
  @override
  String baseRequest(){
    return 'Translated: ' + this._strageInterface.specificRequest().split('').reversed.join();

  }
}
