import 'ISubject.dart';

class RealSubject implements ISubject {
  @override
  void request() {
    print('RealSubject: Handles request');
  }
}
