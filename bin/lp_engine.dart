import 'dart:io';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/pong_game/ball.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';
import 'package:lp_engine/src/pong_game/colision.dart';


void main(List<String> arguments) {
  //variaveis auxiliares para determinar a posição dos objetos
  //int aux1 = stdout.terminalColumns; 154
  //int aux2 = stdout.terminalLines; 37
  
  //-----------------------------------------------------------//
  //criação das base para a construção do jogo
  PongCourt base = PongCourt();
  MatrixBase court = base.create();
  //-----------------------------------------------------------//
  //criação da bola e posicionamento no centro
  Ball ball = Ball();
  ball.init(court);
  //-----------------------------------------------------------//
  //objeto 1
  Square box1 = Square();
  box1.create(6, 4, "#", 1, 0);
  box1.objTomatrix(court, (37 ~/ 2) - 3, 1);
  //objeto 2
  Square box2 = Square();
  box2.create(6, 4, "#", 1, 0);
  box2.objTomatrix(court,  (37 ~/ 2) - 3, 154 - 5);
  //-----------------------------------------------------------//
  //inicialização das classes para realizar as operações
  Moviment move = Moviment();
  Colision colid = Colision();
  //-----------------------------------------------------------//
  court.show();
  int player1_X = 0;
  int player1_Y = 0;

  int player2_X = 0;
  int player2_Y = 0;
  int i = 0;
  //aqui dentro vai a logica para movimentação
  while(true){
    //verificação do primeiro player
    print("teste1");
    /*move.moviment(box1, court, i, player1_Y);
    move.moviment(box2, court, 0 - i, player2_Y);*/
    if(!colid.check(box1, court)){
      print("teste2");
      /*if(box1.movX == 0){
        player1_X = 0;
      } else {
        player1_Y = 0;
      }*/
      move.moviment(box1, court, 0 - i, player1_Y);
    }
    //verificação do segundo player
    /*if(!colid.check(box2, court)){
      print("teste3");
      /*if(box1.movX == 0){
        player2_X = 0;
      } else {
        player2_Y = 0;
      }*/
      move.moviment(box2, court, i, player2_Y);
    }*/

    //Aqui fica a verificação da bola
    i++;
    court.show();
  }
}

/*import 'dart:async';
import 'dart:io';

import 'package:dart_console/dart_console.dart';

final console = Console();

Future<void> read() async {
  var key = console.readKey();
  if(key == 's'){
    a++;
  }
  print(key);
}

int a = 0;

void main() async {
  Timer.periodic(Duration(milliseconds: 10), (Timer t) async {
    t.cancel();
    await read();
  });

  Timer.periodic(Duration(milliseconds: 10), (Timer t) {
    print(a);
  });
}*/

/*import 'dart:io';

import 'package:dart_console/dart_console.dart';

final console = Console();

void main() {
  console.writeLine(
      'This sample demonstrates keyboard input. Press any key including control keys');
  console.writeLine(
      'such as arrow keys, page up/down, home, end etc. to see it echoed to the');
  console.writeLine('screen. Press Ctrl+Q to end the sample.');
  var key = console.readKey();

  while (true) {
    if (key.isControl && key.controlChar == ControlCharacter.ctrlQ) {
      console.clearScreen();
      console.resetCursorPosition();
      console.rawMode = false;
      exit(0);
    } else {
      print(key);
    }
    key = console.readKey();
  }
}*/