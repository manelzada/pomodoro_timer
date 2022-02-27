import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/application/home/home_store.dart';
import 'package:pomodoro_timer/app/presentation/home/home.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => HomeStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        // ignore: prefer_const_constructors
        ChildRoute('/', child: (_, args) => HomePage()),
      ];
}
