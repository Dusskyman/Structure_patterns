import '../lib/ISubject.dart';
import '../lib/Proxy.dart';
import '../lib/RealSubject.dart';

class Client {
  void clientCode(ISubject subject) {
    subject.request();
  }
}

main(List<String> args) {
  Client client = Client();
  RealSubject realSubject = RealSubject();
  Proxy proxy = Proxy(realSubject);

  print('Client: Executing the client code with a real subject:');
  client.clientCode(realSubject);
  print('Client: Executing the same client code with a proxy:');
  client.clientCode(proxy);
}
