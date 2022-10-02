import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';

class Colision{
  //COLISOES QUADRADO
  //------------------------------------------------------------------------------------------------------------------
  bool _checkSquare(Square obj, MatrixBase base){
     if(obj.movX == 1 && obj.movY == 1){ //pode se mover nas quartro direçoes
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
       return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
        return true; //3
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na esqueda na primeira quina
        return true; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na esquerda na segunda quina
        return true; //4
      }
    }
    if(obj.movX == 1 && obj.movY == 0){ //só posso mover para cima e para baixo
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        print('bateu aqui');
        int i = 0;
        print(base.next(obj.posX, obj.posY, 1));
        int j = 0;
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
      print('bateu aqui 2');
        return true; //1
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
       return true; //3
      }
    }
    if(obj.movX == 0 && obj.movY == 1){ //só posso mover para direita e esquerda
      if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
        return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return true; //2
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na direita na primeira quina
        return true; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na direita na segunda quina
        return true; //4
      }
    }
    return false;
  }

  /*void altMovimentSquare(Square obj, MatrixBase base){
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
  }*/

  /*void colidFourSquare(Square obj, MatrixBase base){
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
  }*/
  //------------------------------------------------------------------------------------------------------------------/
  //COLISOES CIRCULO
  bool _checkCircle(Circle obj, MatrixBase base){
      if(obj.movX == 1 && obj.movY == 1){ //pode se mover nas quartro direçoes
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
       return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
        return true; //3
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na esqueda na primeira quina
        return true; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na esquerda na segunda quina
        return true; //4
      }
    }
    if(obj.movX == 1 && obj.movY == 0){ //só posso mover para cima e para baixo
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return true; //1
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
       return true; //3
      }
    }
    if(obj.movX == 0 && obj.movY == 1){ //só posso mover para direita e esquerda
      if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
        return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return true; //2
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na direita na primeira quina
        return true; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na direita na segunda quina
        return true; //4
      }
    }
    return false;
  }

  /*void altMovimentCircle(Circle obj, MatrixBase base){
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
  }*/

  /*void colidFourCircle(Circle obj, MatrixBase base){
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
  }*/
  //------------------------------------------------------------------------------------------------------------------//
  //COLISOES TRIANGULO
  bool _checkTriangle(Triangle obj, MatrixBase base){
    if(obj.movX == 1 && obj.movY == 1){ //pode se mover nas quartro direçoes
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
       return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
        return true; //3
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na esqueda na primeira quina
        return true; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na esquerda na segunda quina
        return true; //4
      }
    }
    if(obj.movX == 1 && obj.movY == 0){ //só posso mover para cima e para baixo
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return true; //1
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
       return true; //3
      }
    }
    if(obj.movX == 0 && obj.movY == 1){ //só posso mover para direita e esquerda
      if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
        return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return true; //2
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na direita na primeira quina
        return true; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na direita na segunda quina
        return true; //4
      }
    }
    return false;
  }

  /*void altMovimentTriangle(Triangle obj, MatrixBase base){
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
  }*/

  /*void colidFourTriangle(Triangle obj, MatrixBase base){
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
  }*/
//-------------------------------------------------------------------------------------------------------------------//

  /*void colid(var object, MatrixBase base){
    if(object == Square){
      colidFourSquare(object, base);
    } else if(object == Circle){
      colidFourCircle(object, base);
    } else if(object == Triangle){
      colidFourTriangle(object, base);
    }
  }*/

  //Método para verificar se houve colisão
  bool check(var object, MatrixBase base){
    if(object is Square){
      return _checkSquare(object, base);
    } else if(object is Circle){
      return _checkCircle(object, base);
    } else if(object is Triangle){
      return _checkTriangle(object, base);
    }
    return false;
  }
  
}