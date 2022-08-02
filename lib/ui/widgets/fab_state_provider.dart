import 'package:flutter/material.dart';

class FabStateProvider extends ChangeNotifier {
  bool _isSwitched = false;
  late final AnimationController _controller;

  void openFab() {
    _controller.forward();
    notifyListeners();
  }

  void closeFab() {
    _controller.reverse();
    notifyListeners();
  }

  void pressSwitch(bool switchPosition) {
    _isSwitched = switchPosition;
    notifyListeners();
  }

  bool getSwitchPosition() {
    notifyListeners();
    return _isSwitched;
  }
}
