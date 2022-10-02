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

  String next(int x, int y, int lado){
    if(lado == 1){ //topo
      return _matrix[x - 1][y];
    } else if(lado == 2){ //direita
      return _matrix[x][y + 1];
    } else if(lado == 3){ //baixo
      return _matrix[x + 1][y];
    } else { //esquerda
      return _matrix[x][y - 1];
    }
  }

  @override
  String toString() {
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
