// import 'dart:io';
// import 'package:lp_engine/src/classes/terminal_limits.dart';

// class PongCourt {
//   final int _area;
//   late List<String> _matrix;
//   late int _width;

//   PongCourt(TerminalLimits terminal)
//       : _area = terminal.right * terminal.bottom {
//     _matrix = List.filled(_area, ' ');
//     _width = terminal.right;
//   }

//   List<String> create() {
//     int leftSide = 0;
//     int rightSide = _width - 1;

//     for (int i = 0; i < _area; i++) {
//       if (i == leftSide) {
//         _matrix[i] = '|';
//         leftSide += _width;
//       } else if (i == rightSide) {
//         _matrix[i] = '|';
//         rightSide += _width;
//       } else if (i < _width) {
//         _matrix[i] = '=';
//       } else if (i > (_area - _width * 2)) {
//         _matrix[i] = '=';
//       }
//     }

//     return _matrix;
//   }

//   void print(List<String> matrix) {
//     for (int i = 0; i < _area - _width; i++) {
//       stdout.write(matrix[i]);
//     }
//   }
// }
