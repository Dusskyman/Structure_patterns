import '../lib/Adapt.dart';
import '../lib/Adapter.dart';
import '../lib/Target.dart';

main() {
  Adapt adapt = Adapt();
  Target target = Adapter(adapt);

  print('${target.inKilo()}');
}
