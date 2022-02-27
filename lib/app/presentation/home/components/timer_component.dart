import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/presentation/home/components/button_timer_component.dart';

class TimerComponent extends StatelessWidget {
  final String? title;
  final String? minutes;
  final String? seconds;
  final bool? value;
  final bool? isWorking;
  final void Function()? changeValueStart;
  final void Function()? changeValueStop;
  final void Function()? changeValueRefresh;
  const TimerComponent({
    Key? key,
    this.title,
    this.minutes,
    this.seconds,
    this.changeValueStart,
    this.value,
    this.changeValueStop,
    this.changeValueRefresh,
    this.isWorking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isWorking == true ? Colors.red : Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            isWorking == true ? 'Hora de Trabalhar' : 'Hora de Descansar',
            style: const TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          Text(
            '$minutes : $seconds',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              value == false
                  ? Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ButtonTimerComponent(
                        onTap: changeValueStart,
                        text: 'Iniciar',
                        icon: Icons.play_arrow,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: ButtonTimerComponent(
                        onTap: changeValueStop,
                        text: 'Parar',
                        icon: Icons.stop,
                      ),
                    ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ButtonTimerComponent(
                  onTap: changeValueRefresh,
                  text: 'Reiniciar',
                  icon: Icons.refresh,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
