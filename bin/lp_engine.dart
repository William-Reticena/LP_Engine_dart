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
  /*Ball ball = Ball();
  ball.init(court);*/
  Circle bola = Circle();
  bola.create(2, 2, 2, '*', 1, 1);
  int middleX = aux2 ~/ 2 - bola.width ~/ 2;
  int middleY = aux1 ~/ 2 - bola.height ~/ 2;
  
  bola.objTomatrix(court, middleX, middleY);
  //-----------------------------------------------------------//
  //objeto 1
  Square box1 = Square();
  box1.create(6, 4, "#", 1, 0);
  box1.objTomatrix(court, ((aux2 ~/ 2) - (box1.width ~/ 2)) , 1);
  //objeto 2
  Square box2 = Square();
  box2.create(6, 4, "#", 1, 0);
  box2.objTomatrix(court,  (aux2 ~/ 2) - (box1.width ~/ 2), aux1 - 5);
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
  int muda = -1;

  //aqui dentro vai a logica para movimentação
  while(true){
    keyCodes.forEach((keyCode) {
      if(keyCode == 119){
        //print(String.fromCharCode(keyCode)); 
        player1_X = -1; // para cima
        //print(player1_X);
      } else if(keyCode == 115){
        //print(String.fromCharCode(keyCode));
        player1_X = 1; // para baixo
        //print(player1_X);
      }else if(keyCode == 105){
        //print(String.fromCharCode(keyCode));
        player2_X = -1; // para cima
        //print(player2_X);
      }else if(keyCode == 107){
        //print(String.fromCharCode(keyCode));
        player2_X = 1; // para baixo
        //print(player2_X);
      }
    });
    keyCodes = [];
    await Future.delayed(Duration(milliseconds: 100));
  
    //verificação do primeiro player
    if(!colid.check(box1, court)){
      if(box1.movX == 0){
        player1_X = 0;
      } else {
        player1_Y = 0;
      }
      move.moviment(box1, court, player1_X, player1_Y);
    } else if(colid.check2(box1, court) == 1){ //colidi em cima
      if(player1_X == 1){
        move.moviment(box1, court, player1_X, player1_Y);
      }
    } else if(colid.check2(box1, court) == 3){ //colidi em baixo
      if(player1_X == -1){
        move.moviment(box1, court, player1_X, player1_Y);
      }
    }
    //verificação do segundo player
    if(!colid.check(box2, court)){
      if(box1.movX == 0){
        player2_X = 0;
      } else {
        player2_Y = 0;
      }
      move.moviment(box2, court, player2_X, player2_Y);
    } else if(colid.check2(box2, court) == 1){ //colidi em cima // ele entra aqui e espera o cara digitar algo diferente
      if(player2_X == 1){ //se digitou algo para baixo ele executa, caso contrario não
        move.moviment(box2, court, player2_X, player2_Y);
      }
    } else if(colid.check2(box2, court) == 3){ //colidi em baixo
      if(player2_X == -1){
        move.moviment(box2, court, player2_X, player2_Y);
      }
    }

    print("movX");
    print(bola.movX);
    print("movY");
    print(bola.movY);
    print("realX");
    print(bola.realX);
    print("realY");
    print(bola.realY);

    //Aqui fica a verificação da bola
    if(!colid.check(bola, court)){ //verifica se bateu e movimenta caso não
      move.moviment(bola, court, bola.realX, bola.realY); //não colidi em nada, movimento
    } else if(colid.check2(bola, court) == 1){ //colidi em cima
      print("colidi em cima");
      bola.realX = 1;
      move.moviment(bola, court, bola.realX, bola.realY);
    } else if(colid.check2(bola, court) == 3){ //colidi em baixo
      print("colidi em baixo");
      bola.realX = -1;
      move.moviment(bola, court, bola.realX, bola.realY);
    } else if(colid.check2(bola, court) == 2){ //verifico se colidiu com a direita
      if('|' == court.next(bola.posX, bola.posY + bola.height - 1, 2) && '|' == court.next(bola.posX + bola.width, bola.posY + bola.height - 1, 2)){ //verifico se foi na lateral e não na raquete
        placar1++;
        bola.objDelete(court);
        bola.objTomatrix(court, middleX ,middleY);
      } else { //só inverto
        bola.realX *= -1;
        bola.realY *= -1;
        move.moviment(bola, court, bola.realX, bola.realY);
      }
    } else if(colid.check2(bola, court) == 4){ //colidiu com a direita
      if('|' == court.next(bola.posX, bola.posY, 4) && '|' == court.next(bola.posX + bola.width, bola.posY, 4)){
        placar2++;
        bola.objDelete(court);
        bola.objTomatrix(court, middleX ,middleY);
      } else { //só inverto
        bola.realX *= -1;
        bola.realY *= -1;
        move.moviment(bola, court, bola.realX, bola.realY);
      }
    } 
    
    
    
    
    /*if(colid.check2(bola, court) == 1){
      print("entrou");
      bola.movX = 1;
      muda = 1;
        bola.movX = 1;
        print("entrou 2");
        move.moviment(bola, court, muda, bola.movY);
      
    } else if(colid.check2(bola, court) == 3){
      muda = -1;
        move.moviment(bola, court, muda, bola.movY);
    }*/
    
    //zera as variaveis para a proxima iteração
    
    player1_X = player2_X = 0;
    court.show();
  }
}
