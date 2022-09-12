import 'dart:ffi';

import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/utils/base.dart';

class Court extends Base {
  final int top;
  final int right;
  final int bottom;
  final int left;
  late int middle;

  Court(TerminalLimits terminal)
      : top = terminal.top,
        right = terminal.right,
        bottom = terminal.bottom - 1,
        left = terminal.left,
        middle = (terminal.right ~/ 2);

  void _createArea() {
    for (int i = top; i < bottom - 2; i++) {
      print(
          '${createRow(left, middle, ' ', false)}${createRow(middle, right, ' ', false)}');
    }
  }

  void create(TerminalLimits terminal) {
    createRow(left, right, '=', true);

    _createArea();

    createRow(left, right, '=', true);
  }
}
