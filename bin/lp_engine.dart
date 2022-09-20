import 'dart:io';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

void main(List<String> arguments) {
  // print(chalk.yellow.onBlue('Hello world!'));
  // Quadrilateral quadrilateral = Quadrilateral();
  // Triangle teste = Triangle();
  // TerminalLimits limits =
  //     TerminalLimits(0, stdout.terminalColumns, stdout.terminalLines, 0);

  // MatrixBase matrixBase =
  //     MatrixBase(stdout.terminalColumns, stdout.terminalLines);

  PongGame game = PongGame();
  game.createPongCourt(stdout.terminalColumns, stdout.terminalLines);
  game.teste();



  // MatrixBase teste = MatrixBase(36, 22);


  // List<String> teste1 = teste.create();
  // teste.print(teste1);
}
