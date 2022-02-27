import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/application/home/home_store.dart';

import 'components/insert_value_component.dart';
import 'components/timer_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TimerComponent(
                  value: controller.playTimer,
                  changeValueStart: controller.goPlayTimer,
                  changeValueStop: controller.stopPlayTimer,
                  changeValueRefresh: controller.refreshPlayTimer,
                  minutes: controller.minutes.toString().padLeft(2, '0'),
                  seconds: controller.seconds.toString().padLeft(2, '0'),
                  isWorking: controller.isWorking(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InsertValue(
                      increment: controller.playTimer == true &&
                              controller.isWorking() == true
                          ? null
                          : controller.incrementTimeToWork,
                      decrement: controller.playTimer == true &&
                              controller.isWorking() == true
                          ? null
                          : controller.decrementtTimeToWork,
                      isWorking: controller.isWorking(),
                      value: controller.timeToWork,
                      title: 'Trabalho',
                    ),
                    InsertValue(
                      increment: controller.playTimer == true &&
                              controller.isWorking() == false
                          ? null
                          : controller.incrementTimeToRest,
                      decrement: controller.playTimer == true &&
                              controller.isWorking() == false
                          ? null
                          : controller.decrementTimeToRest,
                      isWorking: controller.isWorking(),
                      value: controller.timeToRest,
                      title: 'Descanso',
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
