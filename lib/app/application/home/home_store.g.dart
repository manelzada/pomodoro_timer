// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$intervalTypeAtom = Atom(name: '_HomeStoreBase.intervalType');

  @override
  IntervalType get intervalType {
    _$intervalTypeAtom.reportRead();
    return super.intervalType;
  }

  @override
  set intervalType(IntervalType value) {
    _$intervalTypeAtom.reportWrite(value, super.intervalType, () {
      super.intervalType = value;
    });
  }

  final _$minutesAtom = Atom(name: '_HomeStoreBase.minutes');

  @override
  int get minutes {
    _$minutesAtom.reportRead();
    return super.minutes;
  }

  @override
  set minutes(int value) {
    _$minutesAtom.reportWrite(value, super.minutes, () {
      super.minutes = value;
    });
  }

  final _$secondsAtom = Atom(name: '_HomeStoreBase.seconds');

  @override
  int get seconds {
    _$secondsAtom.reportRead();
    return super.seconds;
  }

  @override
  set seconds(int value) {
    _$secondsAtom.reportWrite(value, super.seconds, () {
      super.seconds = value;
    });
  }

  final _$timeToRestAtom = Atom(name: '_HomeStoreBase.timeToRest');

  @override
  int get timeToRest {
    _$timeToRestAtom.reportRead();
    return super.timeToRest;
  }

  @override
  set timeToRest(int value) {
    _$timeToRestAtom.reportWrite(value, super.timeToRest, () {
      super.timeToRest = value;
    });
  }

  final _$timeToWorkAtom = Atom(name: '_HomeStoreBase.timeToWork');

  @override
  int get timeToWork {
    _$timeToWorkAtom.reportRead();
    return super.timeToWork;
  }

  @override
  set timeToWork(int value) {
    _$timeToWorkAtom.reportWrite(value, super.timeToWork, () {
      super.timeToWork = value;
    });
  }

  final _$playTimerAtom = Atom(name: '_HomeStoreBase.playTimer');

  @override
  bool? get playTimer {
    _$playTimerAtom.reportRead();
    return super.playTimer;
  }

  @override
  set playTimer(bool? value) {
    _$playTimerAtom.reportWrite(value, super.playTimer, () {
      super.playTimer = value;
    });
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  void goPlayTimer() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.goPlayTimer');
    try {
      return super.goPlayTimer();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void stopPlayTimer() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.stopPlayTimer');
    try {
      return super.stopPlayTimer();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refreshPlayTimer() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.refreshPlayTimer');
    try {
      return super.refreshPlayTimer();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeToWork() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.incrementTimeToWork');
    try {
      return super.incrementTimeToWork();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementtTimeToWork() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.decrementtTimeToWork');
    try {
      return super.decrementtTimeToWork();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementTimeToRest() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.incrementTimeToRest');
    try {
      return super.incrementTimeToRest();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTimeToRest() {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction(
        name: '_HomeStoreBase.decrementTimeToRest');
    try {
      return super.decrementTimeToRest();
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
intervalType: ${intervalType},
minutes: ${minutes},
seconds: ${seconds},
timeToRest: ${timeToRest},
timeToWork: ${timeToWork},
playTimer: ${playTimer}
    ''';
  }
}
