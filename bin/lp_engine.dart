import 'dart:io';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/circle.dart';
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
  Triangle triangulo = Triangle();

  //Circle().create(4, 1, 1);

  // base.addBall(quadrado);
  //base.addBall(triangulo);
  Moviment move = Moviment();
  Circle cir = Circle();
  cir.create(2, 2, 2, '*');
  cir.objTomatrix(court, 5, 5);
  court.show();
  move.movimentCirlce(cir, court, 2, 2);
  court.show();
  // //teste1[7][5] = '5';
  // //teste.adicionar(7, 5, '5');
  // //MatrixBase aux = MatrixBase(10, 10);
  // /*aux.adicionar(0, 0, 'A');
  // aux.adicionar(1, 1, 'B');
  // aux.adicionar(2, 2, 'C');
  // aux.adicionar(3, 3, 'D');
  // aux.adicionar(4, 4, 'E');*/
  // //teste.show();
  // //aux.show();
  // //tri.objTomatrix(base, 5, 5);
  //base.show();
  // quadrado.create(5, 5, '*');
  // quadrado.objTomatrix(court, 5, 5);
  // print(Process.runSync("clear", [], runInShell: true).stdout);

  // base.show();
  // // print(teste1[3][5]);
  // //
  /*Square teste = Square();
  teste.create(5, 5, '#');
  teste.objTomatrix(court, 10, 10);
  court.show();
  Square teste_2 = Square();
  teste_2.create(5, 5, '#');
  teste_2.objTomatrix(court, 10, 15);
  court.show();
  Colision cod = Colision();
  cod.checkSquare(teste, court);*/
  
  //move.movimentSquare(teste, court, 2, 0);
  //court.show();
  //tri.objDelete(court); //delete esta funcionando
  //base.show();
  //print(Process.runSync("clear", [], runInShell: true).stdout);
}
