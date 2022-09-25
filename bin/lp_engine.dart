import 'dart:io';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';
import 'package:lp_engine/src/pong_game/colision.dart';

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
  // MatrixBase base = MatrixBase(stdout.terminalColumns, stdout.terminalLines);
  // Triangle tri = Triangle();
  // tri.create(3, '*');

  PongCourt base = PongCourt();
  MatrixBase court = base.create();
  Square quadrado = Square();


  base.addBall(quadrado);

  /*Triangle tri = Triangle();
  tri.create(4, "A");
  tri.objTomatrix(court, 10, 10);
  // //tri.objTomatrix(base, 5, 5);
  court.show();*/
  // quadrado.create(5, 5, '*');
  // quadrado.objTomatrix(court, 5, 5);


  // base.show();
  // // print(teste1[3][5]);
  // //
  Square teste = Square();
  teste.create(5, 5, '#');
  teste.objTomatrix(court, 10, 10);
  //court.show();
  Square teste_2 = Square();
  teste_2.create(5, 5, '#');
  teste_2.objTomatrix(court, 15, 15);

  Colision cod = Colision();
  cod.checkSquare(teste, court);
  /*Moviment move = Moviment();
  move.movimentSquare(teste, court, 2, 0);*/
  //court.show();
  //tri.objDelete(court); //delete esta funcionando
  //base.show();
  //print(Process.runSync("clear", [], runInShell: true).stdout);
}
