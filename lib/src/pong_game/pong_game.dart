import 'dart:io';

import 'package:lp_engine/src/utils/matrix_base.dart';

class PongGame {
  late MatrixBase _instance;
  late List<String> _court;
  late int _width;
  late int _height;

  void createPongCourt(int width, int height) {
    _width = width;
    _height = height;
    _instance = MatrixBase(width, height);
    _court = _instance.create();
  }

  void printCourt() {
    _instance.print(_court);
  }

  int flag = 1;

  void teste() {
    int meio = (_width ~/ 2) * (_height * 2 - 27);
    _court[meio] = 'O';

    while (true) {
      print(Process.runSync("clear", [], runInShell: true).stdout);
      printCourt();
      _court[meio] = 'O';

      if (flag == 1) {
        meio -= _width + 0;
        if (meio < 0) {
          flag = 2;
        }
      } else if (flag == 2) {
        meio += _width - 60;
        if (meio > 1800) {
          flag = 1;
        }
      }
    }
  }
}
