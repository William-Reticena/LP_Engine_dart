import 'dart:io';
import 'dart:async';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/pong_game/ball.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';
import 'package:lp_engine/src/pong_game/colision.dart';

List<int> keyCodes = [];
void toBePrinted(List<int> _keyCodes) {
  keyCodes = _keyCodes;
}

void main(List<String> arguments) async {
  //variaveis auxiliares para determinar a posição dos objetos
  int aux1 = stdout.terminalColumns; //154
  int aux2 = stdout.terminalLines; //37

  //-----------------------------------------------------------//
  //criação das base para a construção do jogo
  PongCourt base = PongCourt();
  MatrixBase court = base.create();
  //-----------------------------------------------------------//
  //criação da bola e posicionamento no centro
  Ball ball = Ball();
  ball.init(court, 1, 1);
  int middleX = aux2 ~/ 2 - ball.width ~/ 2;
  int middleY = aux1 ~/ 2 - ball.height ~/ 2;

  /*Circle bola = Circle();
  bola.create(2, 2, 2, '*', 1, 1);
  int middleX = aux2 ~/ 2 - bola.width ~/ 2;
  int middleY = aux1 ~/ 2 - bola.height ~/ 2;
  
  bola.objTomatrix(court, middleX, middleY);*/
  //-----------------------------------------------------------//
  //objeto 1
  Square box1 = Square();
  box1.create(6, 4, "#", 1, 0);
  box1.objTomatrix(court, ((aux2 ~/ 2) - (box1.width ~/ 2)), 1);
  //objeto 2
  Square box2 = Square();
  box2.create(6, 4, "#", 1, 0);
  box2.objTomatrix(court, (aux2 ~/ 2) - (box1.width ~/ 2), aux1 - 5);
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

  int placar1 = 0;
  int placar2 = 0;
  //sempre resetar o valor dos incrementos apos um movimento

  stdin.echoMode = false;
  stdin.lineMode = false;
  stdin.listen(toBePrinted);

  //aqui dentro vai a logica para movimentação
  while (true) {
    keyCodes.forEach((keyCode) {
      if (keyCode == 119) {
        //print(String.fromCharCode(keyCode));
        player1_X = -1; // para cima
        //print(player1_X);
      } else if (keyCode == 115) {
        //print(String.fromCharCode(keyCode));
        player1_X = 1; // para baixo
        //print(player1_X);
      } else if (keyCode == 105) {
        //print(String.fromCharCode(keyCode));
        player2_X = -1; // para cima
        //print(player2_X);
      } else if (keyCode == 107) {
        //print(String.fromCharCode(keyCode));
        player2_X = 1; // para baixo
        //print(player2_X);
      }
    });
    keyCodes = [];
    await Future.delayed(Duration(milliseconds: 100));
    print("player 1: $placar1 player 2: $placar2");
    
    //verificação do primeiro player
    if (!colid.check(box1, court)) {
      if (box1.movX == 0) {
        player1_X = 0;
      } else {
        player1_Y = 0;
      }
      move.moviment(box1, court, player1_X, player1_Y);
    } else if (colid.check2(box1, court) == 1) {
      //colidi em cima
      if (player1_X == 1) {
        move.moviment(box1, court, player1_X, player1_Y);
      }
    } else if (colid.check2(box1, court) == 3) {
      //colidi em baixo
      if (player1_X == -1) {
        move.moviment(box1, court, player1_X, player1_Y);
      }
    }
    //verificação do segundo player
    if (!colid.check(box2, court)) {
      if (box1.movX == 0) {
        player2_X = 0;
      } else {
        player2_Y = 0;
      }
      move.moviment(box2, court, player2_X, player2_Y);
    } else if (colid.check2(box2, court) == 1) {
      //colidi em cima // ele entra aqui e espera o cara digitar algo diferente
      if (player2_X == 1) {
        //se digitou algo para baixo ele executa, caso contrario não
        move.moviment(box2, court, player2_X, player2_Y);
      }
    } else if (colid.check2(box2, court) == 3) {
      //colidi em baixo
      if (player2_X == -1) {
        move.moviment(box2, court, player2_X, player2_Y);
      }
    }

    //Aqui fica a verificação da bola
    if(!colid.check(ball, court)){ //verifica se bateu e movimenta caso não
      move.moviment(ball, court, ball.realX, ball.realY); //não colidi em nada, movimento
    } else if(colid.check2(ball, court) == 1){ //colidi em cima
      ball.realX = 1;
      move.moviment(ball, court, ball.realX, ball.realY);
    } else if(colid.check2(ball, court) == 3){ //colidi em baixo
      ball.realX = -1;
      move.moviment(ball, court, ball.realX, ball.realY);
    } else if(colid.check2(ball, court) == 2){ //verifico se colidiu com a direita
      if('|' == court.next(ball.posX, ball.posY + ball.height - 1, 2) && '|' == court.next(ball.posX + ball.width, ball.posY + ball.height - 1, 2)){ //verifico se foi na lateral e não na raquete
        placar1++;
        ball.objDelete(court);
        ball.objTomatrix(court, middleX ,middleY);
      } else { //só inverto
        ball.realX *= -1;
        ball.realY *= -1;
        move.moviment(ball, court, ball.realX, ball.realY);
      }
    } else if(colid.check2(ball, court) == 4){ //colidiu com a direita
      if('|' == court.next(ball.posX, ball.posY, 4) && '|' == court.next(ball.posX + ball.width, ball.posY, 4)){
        placar2++;
        ball.objDelete(court);
        ball.objTomatrix(court, middleX ,middleY);
      } else { //só inverto
        ball.realX *= -1;
        ball.realY *= -1;
        move.moviment(ball, court, ball.realX, ball.realY);
      }
    } 
    
    //zera as variaveis para a proxima iteração

    player1_X = player2_X = 0;
    print(Process.runSync("clear", [], runInShell: true).stdout);
    court.show();
  }
}
