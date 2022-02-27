import 'dart:async';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

enum IntervalType { work, rest }

abstract class _HomeStoreBase with Store {
  @observable
  IntervalType intervalType = IntervalType.work;

  @observable
  int minutes = 1;

  @observable
  int seconds = 0;

  @observable
  int timeToRest = 1;

  @observable
  int timeToWork = 1;

  @observable
  bool? playTimer = false;

  bool isWorking() {
    return intervalType == IntervalType.work;
  }

  bool isResting() {
    return intervalType == IntervalType.rest;
  }

  Timer? timer;

  @action
  void goPlayTimer() {
    playTimer = true;
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (minutes == 0 && seconds == 0) {
          _changeIntervalType();
        } else if (seconds == 0) {
          seconds = 59;
          minutes--;
        } else {
          seconds--;
        }
      },
    );
  }

  @action
  void stopPlayTimer() {
    playTimer = false;
    timer?.cancel();
  }

  @action
  void refreshPlayTimer() {
    stopPlayTimer();
    minutes = isWorking() ? timeToWork : timeToRest;
    seconds = 0;
  }

  void _changeIntervalType() {
    if (isWorking()) {
      intervalType = IntervalType.rest;
      minutes = timeToRest;
    } else {
      intervalType = IntervalType.work;
      minutes = timeToWork;
    }
    seconds = 0;
  }

  @action
  void incrementTimeToWork() {
    timeToWork++;
    if (isWorking()) {
      refreshPlayTimer();
    }
  }

  @action
  void decrementtTimeToWork() {
    timeToWork--;
    if (isWorking()) {
      refreshPlayTimer();
    }
  }

  @action
  void incrementTimeToRest() {
    timeToRest++;
    if (isResting()) {
      refreshPlayTimer();
    }
  }

  @action
  void decrementTimeToRest() {
    timeToRest--;
    if (isResting()) {
      refreshPlayTimer();
    }
  }
}
