import 'dart:io';
import 'dart:convert';

class MatrixBase {
  late List<List<String>> _matrix;
  late int _width;
  late int _height;

  MatrixBase(this._width, this._height) {
    _matrix = [];

    for (int row = 0; row < _height; row++) {
      _matrix.add(List.filled(_width, ' '));
    }
  }

  void put(int x, int y, String val){
    _matrix[x][y] = val;
  }

  @override
  String toString() {
    return json.encode(_matrix);
  }
  
  void show() {
    for (int i = 0; i < _height-1; i++) {
      for (int j = 0; j < _width-1; j++) {
        stdout.write(_matrix[i][j]);
      }
      print('');
    }
  }
}
