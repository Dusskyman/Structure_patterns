class Facade {
  SubSystemA _subSystemA;
  SubSystemB _subSystemB;

  Facade(this._subSystemA, this._subSystemB);

  String operation() {
    String result = 'Facade initializes subsystem:\n';
    result += _subSystemA.operationA();
    result += _subSystemB.operationA();
    result += "Facade orders subsystems to perform the action:\n";
    result += _subSystemA.operationB();
    result += _subSystemB.operationB();
    return result;
  }
}

class SubSystemA {
  String operationA() {
    return 'SubSystemA is ready\n';
  }

  String operationB() {
    return 'SubSystemA: Go\n';
  }
}

class SubSystemB {
  String operationA() {
    return 'SubSystemB is ready\n';
  }

  String operationB() {
    return 'SubSystemB: Go\n';
  }
}

main(List<String> args) {
  SubSystemA subSystemA = SubSystemA();
  SubSystemB subSystemB = SubSystemB();
  Facade facade = Facade(subSystemA, subSystemB);

  print(facade.operation());
}
