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

  // PongGame game = PongGame();
  // game.createPongCourt(stdout.terminalColumns, stdout.terminalLines);
  // game.teste();

  MatrixBase teste = MatrixBase(stdout.terminalColumns, stdout.terminalLines);

  //teste1[7][5] = '5';
  teste.adicionar(7, 5, '5');
  MatrixBase aux = MatrixBase(10, 10);
  aux.adicionar(0, 0, 'A');
  aux.adicionar(1, 1, 'B');
  aux.adicionar(2, 2, 'C');
  aux.adicionar(3, 3, 'D');
  aux.adicionar(4, 4, 'E');

  aux.show();
  // print(teste1[3][5]);
  //
}
