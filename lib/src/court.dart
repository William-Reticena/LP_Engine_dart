import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class PongCourt {
  late MatrixBase _matrix;
  final int _width, _height;

  PongCourt()
      : _width = 69, //stdout.terminalColumns,
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
          _matrix.put(i, j, '|');
        }
      }
    }
    return _matrix;
  }

  void addBall(var object) {
    if (object is Square) {
      object.create(10, 10, '*', 1, 1);
      int middleX = (_width / 2 - object.height / 2).ceil();
      int middleY = (_height / 2 - object.width / 2).ceil();

      object.objTomatrix(_matrix, middleY, middleX);

      _matrix.show();
    } else if (object is Circle) {
      object.create(2, 1, 2, '.');
      int middleX = (_width / 2 - object.height / 2).ceil();
      int middleY = (_height / 2 - object.width / 2).ceil();

      object.objTomatrix(_matrix, middleY, middleX);

      _matrix.show();
    } else if (object is Triangle) {
      int alt = 4;
      object.create(alt, '#');
      int middleX = (_width / 2 - object.height / 2).ceil();
      int middleY = (_height / 2 - object.width / 2).ceil();

      object.objTomatrix(_matrix, middleY + alt ~/ 2, middleX - alt ~/ 2);

      _matrix.show();
    }
  }
}
