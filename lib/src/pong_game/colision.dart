import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Colision{

  int checkSquare(Square obj, MatrixBase base){
    //verificação das laterais sentido horario
    //cima

    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY, 1)){ //ponto inicial 
        print("cima");
        print(base.next(x + obj.posX, obj.posY, 1));
        return 1;
      }
    }
    //direita
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posX + obj.width, y + obj.posY, 2)){ //ponto superior direito
        print("direita");
        print(base.next(obj.posX + obj.width, y + obj.posY, 2));
        return 2;
      }
    }
    //baixo
    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY + obj.height, 3)){ //ponto inferior esquerdo
        print("esquerda");
        print(base.next(x + obj.posX, obj.posY + obj.height, 3));
        return 3;
      }
    }
    //esquerda
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posY, y + obj.posY, 4)){
        print("baixo");
        print(base.next(obj.posY, y + obj.posY, 4));
        return 4;
      }
    }
    return 0;
  }

  int checkCircle(Circle obj, MatrixBase base){
    //verificação das laterais sentido horario
    //cima

    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY, 1)){ //ponto inicial 
        print("cima");
        print(base.next(x + obj.posX, obj.posY, 1));
        return 1;
      }
    }
    //direita
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posX + obj.width, y + obj.posY, 2)){ //ponto superior direito
        print("direita");
        print(base.next(obj.posX + obj.width, y + obj.posY, 2));
        return 2;
      }
    }
    //baixo
    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY + obj.height, 3)){ //ponto inferior esquerdo
        print("esquerda");
        print(base.next(x + obj.posX, obj.posY + obj.height, 3));
        return 3;
      }
    }
    //esquerda
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posY, y + obj.posY, 4)){
        print("baixo");
        print(base.next(obj.posY, y + obj.posY, 4));
        return 4;
      }
    }
    return 0;
  }

  int checkTriangle(Triangle obj, MatrixBase base){
    //verificação das laterais sentido horario
    //cima

    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY, 1)){ //ponto inicial 
        print("cima");
        print(base.next(x + obj.posX, obj.posY, 1));
        return 1;
      }
    }
    //direita
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posX + obj.width, y + obj.posY, 2)){ //ponto superior direito
        print("direita");
        print(base.next(obj.posX + obj.width, y + obj.posY, 2));
        return 2;
      }
    }
    //baixo
    for(int x = 0; x < obj.width; x++){
      if(' ' != base.next(x + obj.posX, obj.posY + obj.height, 3)){ //ponto inferior esquerdo
        print("esquerda");
        print(base.next(x + obj.posX, obj.posY + obj.height, 3));
        return 3;
      }
    }
    //esquerda
    for(int y = 0; y < obj.height; y++){
      if(' ' != base.next(obj.posY, y + obj.posY, 4)){
        print("baixo");
        print(base.next(obj.posY, y + obj.posY, 4));
        return 4;
      }
    }
    return 0;
  }

  void altMovimentSquare(Square obj, MatrixBase base){
    Moviment move = Moviment();
    if(checkSquare(obj, base) == 1 && obj.movY == 1){ //colidiu em cima, mando para baixo
      move.movimentSquare(obj, base, obj.movY, 0);
    } else if(checkSquare(obj, base) == 2 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.movimentSquare(obj, base, obj.movX, 0);
    } else if(checkSquare(obj, base) == 3 && obj.movY == 1){ // colidiu em baixo, mando para cima
      move.movimentSquare(obj, base, 0, -obj.movY);
    } else if(checkSquare(obj, base) == 4 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.movimentSquare(obj, base, -obj.movX, 0);
    }
  }

  void colidFourSquare(Square obj, MatrixBase base){
    //verifica cada lateral se ouve colisao, caso houve, não faço nada
    Moviment move = Moviment();
    if(checkSquare(obj, base) == 1){
      move.movimentSquare(obj, base, 0, 0);
    } else if(checkSquare(obj, base) == 2){
      move.movimentSquare(obj, base, 0, 0);
    } else if(checkSquare(obj, base) == 3){
      move.movimentSquare(obj, base, 0, 0);
    } else if(checkSquare(obj, base) == 4){
      move.movimentSquare(obj, base, 0, 0);
    }
  }

  void altMovimentCircle(Circle obj, MatrixBase base){
    Moviment move = Moviment();
    if(checkCircle(obj, base) == 1 && obj.movY == 1){ //colidiu em cima, mando para baixo
      move.movimentCirlce(obj, base, obj.movY, 0);
    } else if(checkCircle(obj, base) == 2 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.movimentCirlce(obj, base, obj.movX, 0);
    } else if(checkCircle(obj, base) == 3 && obj.movY == 1){ // colidiu em baixo, mando para cima
      move.movimentCirlce(obj, base, 0, -obj.movY);
    } else if(checkCircle(obj, base) == 4 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.movimentCirlce(obj, base, -obj.movX, 0);
    }
  }

  void colidFourCircle(Circle obj, MatrixBase base){
    //verifica cada lateral se ouve colisao, caso houve, não faço nada
    Moviment move = Moviment();
    if(checkCircle(obj, base) == 1){
      move.movimentCirlce(obj, base, 0, 0);
    } else if(checkCircle(obj, base) == 2){
      move.movimentCirlce(obj, base, 0, 0);
    } else if(checkCircle(obj, base) == 3){
      move.movimentCirlce(obj, base, 0, 0);
    } else if(checkCircle(obj, base) == 4){
      move.movimentCirlce(obj, base, 0, 0);
    }
  }

  void altMovimentTriangle(Triangle obj, MatrixBase base){
    Moviment move = Moviment();
    if(checkTriangle(obj, base) == 1 && obj.movY == 1){ //colidiu em cima, mando para baixo
      move.movimentTriangle(obj, base, obj.movY, 0);
    } else if(checkTriangle(obj, base) == 2 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.movimentTriangle(obj, base, obj.movX, 0);
    } else if(checkTriangle(obj, base) == 3 && obj.movY == 1){ // colidiu em baixo, mando para cima
      move.movimentTriangle(obj, base, 0, -obj.movY);
    } else if(checkTriangle(obj, base) == 4 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.movimentTriangle(obj, base, -obj.movX, 0);
    }
  }

  void colidFourTriangle(Triangle obj, MatrixBase base){
    //verifica cada lateral se ouve colisao, caso houve, não faço nada
    Moviment move = Moviment();
    if(checkTriangle(obj, base) == 1){
      move.movimentTriangle(obj, base, 0, 0);
    } else if(checkTriangle(obj, base) == 2){
      move.movimentTriangle(obj, base, 0, 0);
    } else if(checkTriangle(obj, base) == 3){
      move.movimentTriangle(obj, base, 0, 0);
    } else if(checkTriangle(obj, base) == 4){
      move.movimentTriangle(obj, base, 0, 0);
    }
  }
}