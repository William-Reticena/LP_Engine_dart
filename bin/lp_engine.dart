import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/triangle.dart';
// import 'package:chalkdart/chalk.dart';

enum Dir { stop, left, upleft, downleft, right, upright, downright }

class Ball {
  int _x, _y;
  final int _originalX, _originalY;
  Dir _direction;

  Ball(int posX, int posY)
      : _originalX = posX,
        _originalY = posY,
        _x = posX,
        _y = posY,
        _direction = Dir.stop;

  void reset() {
    _x = _originalX;
    _y = _originalY;
    _direction = Dir.stop;
  }

  void changeDirection(Dir direction) {
    _direction = direction;
  }

  void randomDirection() {
    _direction = Dir.values[((Random().nextInt(6)) + 1)];
  }

  int get getX {
    return _x;
  }

  int get getY {
    return _y;
  }

  Dir get getDirection {
    return _direction;
  }

  void move() {
    switch (_direction) {
      case Dir.stop:
        break;
      case Dir.left:
        _x--;
        break;
      case Dir.right:
        _x++;
        break;
      case Dir.upleft:
        _x--;
        _y--;
        break;
      case Dir.downleft:
        _x--;
        _y++;
        break;
      case Dir.upright:
        _x++;
        _y--;
        break;
      case Dir.downright:
        _x++;
        _y++;
        break;
      default:
        break;
    }
  }

  void printT() {
    print('Ball [$_x, $_y][$_direction]');
  }
}

class Paddle {
  int _x, _y;
  late int _originalX, _originalY;

  Paddle()
      : _x = 0,
        _y = 0;

  Paddle.initPos(int posX, int posY)
      : _originalX = posX,
        _originalY = posY,
        _x = posX,
        _y = posY;

  void reset() {
    _x = _originalX;
    _y = _originalY;
  }

  int get getX {
    return _x;
  }

  int get getY {
    return _y;
  }

  void moveUp() {
    _y--;
  }

  void moveDown() {
    _y++;
  }

  void printT() {
    print('Paddle [$_x, $_y]');
  }
}

class GameManger {
  final int _width, _height;
  int _score1, _score2;
  int _up1, _down1, _up2, _down2;
  bool _quit;
  Ball _ball;
  Paddle _player1, _player2;

  GameManger(int width, int height)
      : _quit = false,
        _up1 = 119,
        _up2 = 115,
        _down1 = 105,
        _down2 = 107,
        _score1 = 0,
        _score2 = 0,
        _width = width,
        _height = height,
        _ball = Ball(width ~/ 2, height ~/ 2),
        _player1 = Paddle.initPos(1, height ~/ 2 - 3),
        _player2 = Paddle.initPos(width - 2, height ~/ 2 - 3) {
    Random();
  }

  void scoreUp(Paddle player) {
    if (player == _player1) {
      _score1++;
    } else if (player == _player2) {
      _score2++;
    }

    _ball.reset();
    _player1.reset();
    _player2.reset();
  }

  void draw() {
    Process.runSync('cls', [], runInShell: true).stdout;

    for (int i = 0; i < _width + 2; i++) {
      // print('\xb2');
      stdout.write('\xb2');
    }

    for (int i = 0; i < _height; i++) {
      for (int j = 0; j < _width; j++) {
        int ballX = _ball.getX;
        int ballY = _ball.getY;
        int player1X = _player1.getX;
        int player2X = _player2.getX;
        int player1Y = _player1.getY;
        int player2Y = _player1.getY;

        if (j == 0) stdout.write('\xb2');

        if (ballX == j && ballY == i) {
          stdout.write('O');
        } else if (player1X == j && player1Y == i) {
          stdout.write('\xdb');
        } else if (player2X == j && player2Y == i) {
          stdout.write('\xdb');
        } else if (player1X == j && player1Y + 1 == i) {
          stdout.write('\xdb');
        } else if (player1X == j && player1Y + 2 == i) {
          stdout.write('\xdb');
        } else if (player1X == j && player1Y + 3 == i) {
          stdout.write('\xdb');
        } else if (player2X == j && player2Y + 1 == i) {
          stdout.write('\xdb');
        } else if (player2X == j && player2Y + 2 == i) {
          stdout.write('\xdb');
        } else if (player2X == j && player2Y + 3 == i) {
          stdout.write('\xdb');
        } else {
          stdout.write('');
        }

        if (j == _width - 1) stdout.write('\xb2');
      }
      print('');
    }
    for (int i = 0; i < _width + 2; i++) {
      stdout.write('\xb2');
    }
    print('');

    print('Score 1: $_score1\nScore 2: $_score2');
  }

  void input(int key) {
    _ball.move();

    // int ballX = _ball.getX;
    // int ballY = _ball.getY;
    // int player1X = _player1.getX;
    // int player2X = _player2.getX;
    int player1Y = _player1.getY;
    int player2Y = _player2.getY;

    if (key == _up1) {
      if (player1Y > 0) _player1.moveUp();
    }
    if (key == _up2) {
      if (player2Y > 0) _player2.moveUp();
    }
    if (key == _down1) {
      if (player1Y + 4 < _height) _player1.moveDown();
    }
    if (key == _down2) {
      if (player2Y + 4 < _height) _player2.moveDown();
    }

    if (_ball.getDirection == Dir.stop) {
      _ball.randomDirection();
    }

    if (key == 113) _quit = true;

    // var code = stdin.readLineSync(encoding: utf8);
  }

  void logic() {
    int ballX = _ball.getX;
    int ballY = _ball.getY;
    int player1X = _player1.getX;
    int player2X = _player2.getX;
    int player1Y = _player1.getY;
    int player2Y = _player2.getY;

    for (int i = 0; i < 4; i++) {
      if (ballX == player1X + 1) {
        if (ballY == player2Y - 1) {
          _ball.changeDirection(Dir.values[((Random().nextInt(3)) + 4)]);
        }
      }
    }

    for (int i = 0; i < 4; i++) {
      if (ballX == player2X + 1) {
        if (ballY == player2Y - 1) {
          _ball.changeDirection(Dir.values[((Random().nextInt(3)) + 1)]);
        }
      }
    }

    if (ballY == _height - 1) {
      _ball.changeDirection(
          _ball.getDirection == Dir.downright ? Dir.upright : Dir.upleft);
    }

    if (ballY == 0) {
      _ball.changeDirection(
          _ball.getDirection == Dir.upright ? Dir.downright : Dir.downleft);
    }

    if (ballX == _width - 1) {
      scoreUp(_player1);
    }

    if (ballX == 0) {
      scoreUp(_player2);
    }
  }

  // void run() {
  //   while(!_quit) {
  //     draw();
  //     input(key)
  //   }
  // }
}

void main(List<String> arguments) {
  // Ball c = Ball(40, 20);
  // c.printT();
  // c.randomDirection();
  // c.printT();
  // c.move();
  // c.printT();
  // c.randomDirection();
  // c.printT();
  // c.move();
  // c.printT();

  // Paddle p1 = Paddle.initPos(0, 0);
  // Paddle p2 = Paddle.initPos(10, 0);
  // p1.printT();
  // p2.printT();
  // p1.moveUp();
  // p2.moveDown();
  // p1.printT();
  // p2.printT();

  GameManger g = GameManger(40, 20);

  /*stdin
    ..lineMode = false
    ..echoMode = false;

  stdin.listen((List<int> codes) {
    // int first = codes.first;
    // int len = codes.length;
    // late var key;
    g.draw();
    g.input(codes[0]);
    g.logic();
    // if(codes[0] == 115)
    // print(codes);
  });*/

  // print(c.getX);

  // print(chalk.yellow.onBlue('Hello world!'));
  Quadrilateral quadrilateral = Quadrilateral();
  Triangle teste = Triangle();
   TerminalLimits limits =
       TerminalLimits(0, stdout.terminalColumns, stdout.terminalLines, 0);
   Court court = Court(limits);

   if (stdout.hasTerminal) {
      court.create(limits);
    teste.create(3, '*');
     quadrilateral.create(5, 3);
   }
}