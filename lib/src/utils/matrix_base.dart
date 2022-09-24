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
  //final int _area;
  // late List<String> _matrix;
  late List<List<String>> _matrix;
  late int _width;
  late int _height;

  MatrixBase(this._width, this._height){
    _matrix = [];

    for(int row = 0; row < _height; row++){
      _matrix.add(List.filled(_width, ' '));
    }
  }

  void add(int x, int y, String val){
    _matrix[x][y] = val;
  }
  @override
  String toString(){
    return json.encode(_matrix);
  }
  /*MatrixBase(int width, int height) : _area = width * height {
    // _matrix = List.filled(_area, ' ');
    // for (int i = 0; i < height; i++) {
    _matrix = List.filled(height, List.filled(width, ' '));
    // }
    _width = width;
    _height = height;
    print('$width $height');
  }

  List<List<String>> create() {
    int leftSide = 0;
    int rightSide = _width - 1;

    // _matrix[0][5] = 'g';

    // for (int i = 0; i < _area; i++) {
    // _matrix[i][0] = '1';
    // if (i == leftSide) {
    //   _matrix[i] = '|';
    //   leftSide += _width;
    // } else if (i == rightSide) {
    //   _matrix[i] = '|';
    //   rightSide += _width;
    // } else if (i < _width) {
    //   _matrix[i] = '=';
    // } else if (i > (_area - _width * 2)) {
    //   _matrix[i] = '=';
    // }
    // }

    return _matrix;
  }
  */
  void show() {
    for (int i = 0; i < _height; i++) {
      for (int j = 0; j < _width; j++) {
        stdout.write(_matrix[i][j]);
        
      }
      print('');
    }
  }
  void aa(){
    print(_matrix[0][0]);
  }
  void adicionar(int x, int y, String key){
      _matrix[x][y] = key;
  }
}
