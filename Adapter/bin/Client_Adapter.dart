import '../lib/StrageInterface.dart';
import '../lib/Adapter.dart';
import '../lib/BaseInterface.dart';

main() {
  StrageInterface strageInterface = StrageInterface();
  BaseInterface strangeInterfaceAdapted = Adapter(strageInterface);
  BaseInterface baseInterface = BaseInterface();
  print('I can work with default interface:');
  print(baseInterface.baseRequest());
  print('But i dont understand this one:');
  print(strageInterface.specificRequest());
  print('But with adapter its all fine:');
  print(strangeInterfaceAdapted.baseRequest());
}
