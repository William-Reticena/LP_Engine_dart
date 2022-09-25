import 'dart:io';

import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

// class Court extends Base {
//   final int top;
//   final int right;
//   final int bottom;
//   final int left;
//   late int middle;

//   Court(TerminalLimits terminal)
//       : top = terminal.top,
//         right = terminal.right,
//         bottom = terminal.bottom - 1,
//         left = terminal.left,
//         middle = (terminal.right ~/ 2);

//   void _createArea() {
//     for (int i = top; i < bottom - 2; i++) {
//       print(
//           '${createRow(left, middle, ' ', false)}${createRow(middle, right, ' ', false)}');
//     }
//   }

//   void create(TerminalLimits terminal) {
//     createRow(left, right, '=', true);

//     _createArea();

//     createRow(left, right, '=', true);
//   }
// }

class PongCourt {
  late MatrixBase _matrix;
  final int _width, _height;

  PongCourt()
      : _width = 80, //stdout.terminalColumns,
        _height = 24 {
    //stdout.terminalLines
    MatrixBase court = MatrixBase(_width, _height);
    _matrix = court;
  }

  MatrixBase create() {
    for (int i = 0; i < _height; i++) {
      for (int j = 0; j < _width; j++) {
        if (i == 0) {
          _matrix.put(i, j, '=');
        } else if (j == 0) {
          _matrix.put(i, j, '|');
        } else if (i == _height - 1) {
          _matrix.put(i, j, '=');
        } else if (j == _width - 1) {
          // stdout.write('object');
          _matrix.put(i, j, '|');
        }
      }
    }
    return _matrix;
  }

  void addBall(Square square) {
    square.create(1, 1, '*');
    int middleX = (_width / 2 - square.height / 2).ceil();
    int middleY = (_height / 2 - square.width / 2).ceil();

    square.objTomatrix(_matrix, middleY, middleX);

    _matrix.show();
  }
}
