// class Base {
//   String createRow(int left, int right, String char, bool outline) {
//     String row = right > 0 ? '|' : '';

//     for (int i = left; i < right - 2; i++) {
//       row += char;
//     }

//     if (right > 1) row += '|';

//     if (outline) print(row);

//     return row;
//   }

//   void createArea(int top, int right, int bottom, int left) {
//     for (int i = top; i < bottom - 2; i++) {
//       createRow(left, right, ' ', true);
//     }
//   }
// }

import 'dart:io';
import 'dart:convert';
import 'package:lp_engine/src/classes/terminal_limits.dart';

class MatrixBase {
  late List<List<String>> _matrix;
  late int _width;
  late int _height;

  MatrixBase(this._width, this._height){
    _matrix = [];

    for(int row = 0; row < _height; row++){
      _matrix.add(List.filled(_width, ' '));
    }
  }

  void put(int x, int y, String val){
    _matrix[x][y] = val;
  }

  @override
  String toString(){
    return json.encode(_matrix);
  }
  
  void show() {
    for (int i = 0; i < _height; i++) {
      for (int j = 0; j < _width; j++) {
        stdout.write(_matrix[i][j]);
      }
      print('');
    }
  }
}
