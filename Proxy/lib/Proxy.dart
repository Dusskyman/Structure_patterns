import 'ISubject.dart';
import 'RealSubject.dart';

class Proxy implements ISubject {
  RealSubject _realSubject;
  Proxy(this._realSubject);
  @override
  void request() {
    if (this.checkAccess()) {
      _realSubject.request();
      this.logAccess();
    }
  }

  bool checkAccess() {
    print('Proxy: Checking access prior to firing a real request.');
    return true;
  }

  void logAccess() {
    print('Proxy: Logging the time of request.');
  }
}
