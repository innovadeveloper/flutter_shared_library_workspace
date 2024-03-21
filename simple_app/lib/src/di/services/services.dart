import 'dart:developer';

import 'package:injectable/injectable.dart';

abstract class Service {
  void makeNoise();

  void work() {
    print("working from service.......");
  }
}

@injectable
class ServiceA {
  void donothing() {
    print("do nothing...");
  }
}

@injectable
class ServiceB {
  late ServiceA serviceA;

  ServiceB(ServiceA serviceA) {
    this.serviceA = serviceA;
  }

  void hello() {
    print("hello");
  }

  void sayBye() {
    serviceA.donothing();
  }
}

@injectable
class ServiceC {
  void sayHello() {
    print("hello dear");
  }
}

@Named("serviceD")
@Singleton(as: Service)
class ServiceDImpl extends Service {
  void sayHello() {
    print("hello dear from Service D");
  }

  @override
  void makeNoise() {
    print("[1] noise from D");
  }

  @override
  void work() {
    print("work work work.. always work, grrrrr");
  }
}

@Named("serviceE")
@Singleton(as: Service)
class ServiceEImpl extends Service {
  void sayHello() {
    print("hello dear from Service E");
  }

  @override
  void makeNoise() {
    print("[2] noise from E");
  }

  @override
  void work() {
    super.work();
  }
}

class ServiceF extends Service {
  void sayHello() {
    print("hello dear from ServiceF");
  }

  @override
  void makeNoise() {
    print("[3] noise from ServiceF");
  }

  @override
  void work() {
    super.work();
  }
}

class ServiceGImpl extends Service {
  void sayHello() {
    print("hello dear from ServiceGImpl");
  }

  @override
  void makeNoise() {
    print("[4] noise from ServiceGImpl");
  }

  @override
  void work() {
    super.work();
  }
}

const dev = Environment('dev');

@module
abstract class RegisterModule {
  @singleton
  ServiceF get serviceF;

  @Named("serviceG")
  @Injectable(as: Service)
  ServiceGImpl get serviceG;
}
