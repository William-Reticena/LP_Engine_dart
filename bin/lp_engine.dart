import 'dart:io';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

void main(List<String> arguments) {
  // print(chalk.yellow.onBlue('Hello world!'));
  // Quadrilateral quadrilateral = Quadrilateral();
  // Triangle teste = Triangle();
  // TerminalLimits limits =
  //     TerminalLimits(0, stdout.terminalColumns, stdout.terminalLines, 0);

  // MatrixBase matrixBase =
  //     MatrixBase(stdout.terminalColumns, stdout.terminalLines);

  // PongGame game = PongGame();
  // game.createPongCourt(stdout.terminalColumns, stdout.terminalLines);
  // game.teste();

  MatrixBase base = MatrixBase(stdout.terminalColumns, stdout.terminalLines);

  Triangle tri = Triangle();
  tri.create(4, '*');
  tri.objTomatrix(base, 2, 2);
  base.show();

  /*Square quadrado = Square();
  quadrado.create(4, 2, '#');  //   QUADRADO ESTÁ CORRETO
  quadrado.objTomatrix(base, 2, 2);
  base.show();*/ 
  
  /*Moviment move = Moviment();
  move.movimentTriangle(tri, base, 2, 2);*/

}
