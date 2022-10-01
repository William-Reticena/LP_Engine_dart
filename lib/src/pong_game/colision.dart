import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Colision{
  //COLISOES QUADRADO
  //------------------------------------------------------------------------------------------------------------------
  int _checkSquare(Square obj, MatrixBase base){
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
    if(_checkSquare(obj, base) == 1 && obj.movY == 1){ //colidiu em cima, mando para baixo
      move.moviment(obj, base, obj.movY, 0);
    } else if(_checkSquare(obj, base) == 2 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.moviment(obj, base, obj.movX, 0);
    } else if(_checkSquare(obj, base) == 3 && obj.movY == 1){ // colidiu em baixo, mando para cima
      move.moviment(obj, base, 0, -obj.movY);
    } else if(_checkSquare(obj, base) == 4 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.moviment(obj, base, -obj.movX, 0);
    }
  }

  void colidFourSquare(Square obj, MatrixBase base){
    //verifica cada lateral se ouve colisao, caso houve, não faço nada
    Moviment move = Moviment();
    if(_checkSquare(obj, base) == 1){
      move.moviment(obj, base, 0, 0);
    } else if(_checkSquare(obj, base) == 2){
      move.moviment(obj, base, 0, 0);
    } else if(_checkSquare(obj, base) == 3){
      move.moviment(obj, base, 0, 0);
    } else if(_checkSquare(obj, base) == 4){
      move.moviment(obj, base, 0, 0);
    }
  }
  //------------------------------------------------------------------------------------------------------------------/
  //COLISOES CIRCULO
  int _checkCircle(Circle obj, MatrixBase base){
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

  void altMovimentCircle(Circle obj, MatrixBase base){
    Moviment move = Moviment();
    if(_checkCircle(obj, base) == 1 && obj.movY == 1){ //colidiu em cima, mando para baixo
      move.moviment(obj, base, obj.movY, 0);
    } else if(_checkCircle(obj, base) == 2 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.moviment(obj, base, obj.movX, 0);
    } else if(_checkCircle(obj, base) == 3 && obj.movY == 1){ // colidiu em baixo, mando para cima
      move.moviment(obj, base, 0, -obj.movY);
    } else if(_checkCircle(obj, base) == 4 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.moviment(obj, base, -obj.movX, 0);
    }
  }

  void colidFourCircle(Circle obj, MatrixBase base){
    //verifica cada lateral se ouve colisao, caso houve, não faço nada
    Moviment move = Moviment();
    if(_checkCircle(obj, base) == 1){
      move.moviment(obj, base, 0, 0);
    } else if(_checkCircle(obj, base) == 2){
      move.moviment(obj, base, 0, 0);
    } else if(_checkCircle(obj, base) == 3){
      move.moviment(obj, base, 0, 0);
    } else if(_checkCircle(obj, base) == 4){
      move.moviment(obj, base, 0, 0);
    }
  }
  //------------------------------------------------------------------------------------------------------------------//
  //COLISOES TRIANGULO
  int _checkTriangle(Triangle obj, MatrixBase base){
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

  void altMovimentTriangle(Triangle obj, MatrixBase base){
    Moviment move = Moviment();
    if(_checkTriangle(obj, base) == 1 && obj.movY == 1){ //colidiu em cima, mando para baixo
      move.moviment(obj, base, obj.movY, 0);
    } else if(_checkTriangle(obj, base) == 2 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.moviment(obj, base, obj.movX, 0);
    } else if(_checkTriangle(obj, base) == 3 && obj.movY == 1){ // colidiu em baixo, mando para cima
      move.moviment(obj, base, 0, -obj.movY);
    } else if(_checkTriangle(obj, base) == 4 && obj.movX == 1){ //colidiu na direita, mando para a esquerda
      move.moviment(obj, base, -obj.movX, 0);
    }
  }

  void colidFourTriangle(Triangle obj, MatrixBase base){
    //verifica cada lateral se ouve colisao, caso houve, não faço nada
    Moviment move = Moviment();
    if(_checkTriangle(obj, base) == 1){
      move.moviment(obj, base, 0, 0);
    } else if(_checkTriangle(obj, base) == 2){
      move.moviment(obj, base, 0, 0);
    } else if(_checkTriangle(obj, base) == 3){
      move.moviment(obj, base, 0, 0);
    } else if(_checkTriangle(obj, base) == 4){
      move.moviment(obj, base, 0, 0);
    }
  }
//-------------------------------------------------------------------------------------------------------------------//

  void colid(var object, MatrixBase base){
    if(object == Square){
      colidFourSquare(object, base);
    } else if(object == Circle){
      colidFourCircle(object, base);
    } else if(object == Triangle){
      colidFourTriangle(object, base);
    }
  }

  //Método para verificar se houve colisão
  void check(var object, MatrixBase base){
    if(object is Square){
      _checkSquare(object, base);
    } else if(object is Circle){
      _checkCircle(object, base);
    } else if(object is Triangle){
      _checkTriangle(object, base);
    }
  }
}