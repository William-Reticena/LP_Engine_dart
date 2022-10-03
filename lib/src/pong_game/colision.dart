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
      print('bateu aqui 2');
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

  //------------------------------------------------------------------------------------------------------------------/
  //COLISOES CIRCULO
  bool _checkCircle(Circle obj, MatrixBase base){
      if(obj.movX == 1 && obj.movY == 1){ //pode se mover nas quartro direçoes
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
      print('bateu aqui em cima');
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
      print('bateu aqui cima');
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
       return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return true; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
      print('bateu aqui baixo');
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
        print('bateu aqui baixo');
        return true; //3
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na esqueda na primeira quina
        return true; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na esquerda na segunda quina
        return true; //4
      }
    }
    if(obj.movX == 1 && obj.movY == 0){ //só posso mover para cima e para baixo
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        print("bateu aqui");
        return true; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
      print("bateu aqui");
        return true; //1
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
      print("bateu aqui");
        return true; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
       print("bateu aqui");
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
    return false; //nao colidi em nada
  }

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


//-------------------------------------------------------------------------------------------------------------------//

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
//------------------------------------------------------------------------------------------------------------------//
int _checkSquare2(Square obj, MatrixBase base){
     if(obj.movX == 1 && obj.movY == 1){ //pode se mover nas quartro direçoes
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return 1; 
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return 1; 
      } else if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
       return  2;
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return  2;
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return 3; 
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
        return 3; 
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na esqueda na primeira quina
        return  4;
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na esquerda na segunda quina
        return 4; 
      }
    }
    if(obj.movX == 1 && obj.movY == 0){ //só posso mover para cima e para baixo
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        print('bateu aqui');
        int i = 0;
        print(base.next(obj.posX, obj.posY, 1));
        int j = 0;
        return 1; 
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        print('bateu aqui 2');
        return 1; 
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
      print('bateu aqui 2');
        return 3;
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
       return 3; 
      }
    }
    if(obj.movX == 0 && obj.movY == 1){ //só posso mover para direita e esquerda
      if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
        return 2; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return 2; //2
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na direita na primeira quina
        return 4; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na direita na segunda quina
        return 4; //4
      }
    }
    return 0;
  }

  //------------------------------------------------------------------------------------------------------------------/
  //COLISOES CIRCULO
  int _checkCircle2(Circle obj, MatrixBase base){
  if(obj.movX == 1 && obj.movY == 1){ //pode se mover nas quartro direçoes
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return 1; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return 1; //1
      } else if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
       return 2; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return 2; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return 3; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
        return 3; //3
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na esqueda na primeira quina
        return 4; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na esquerda na segunda quina
        return 4; //4
      }
    }
    if(obj.movX == 1 && obj.movY == 0){ //só posso mover para cima e para baixo
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        print('bateu aqui');
        print(base.next(obj.posX, obj.posY, 1));
        return 1; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        print('bateu aqui 2');
        return 1; //1
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
      print('bateu aqui 2');
        return 3; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
       return 3; //3
      }
    }
    if(obj.movX == 0 && obj.movY == 1){ //só posso mover para direita e esquerda
      if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
        return 2; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return 2; //2
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na direita na primeira quina
        return 4; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na direita na segunda quina
        return 4; //4
      }
    }
    return 0;
  }

  //------------------------------------------------------------------------------------------------------------------//
  //COLISOES TRIANGULO
  int _checkTriangle2(Triangle obj, MatrixBase base){
    if(obj.movX == 1 && obj.movY == 1){ //pode se mover nas quartro direçoes
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return 1; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return 1; //1
      } else if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
       return 2; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return 2; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return 3; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
        return 3; //3
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na esqueda na primeira quina
        return 4; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na esquerda na segunda quina
        return 4; //4
      }
    }
    if(obj.movX == 1 && obj.movY == 0){ //só posso mover para cima e para baixo
      if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na primeira quina
        return 1; //1
      } else if(' ' != base.next(obj.posX, obj.posY, 1)){ //colidiu em cima na segunda quina
        return 1; //1
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY, 3)){ //colidiu em baixo na primeira quina
        return 3; //3
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 3)){ //colidiu em baixo na segunda quina
       return 3; //3
      }
    }
    if(obj.movX == 0 && obj.movY == 1){ //só posso mover para direita e esquerda
      if(' ' != base.next(obj.posX, obj.posY + obj.height - 1, 2)){ //colidiu na direita na primeira quina
        return 2; //2
      } else if(' ' != base.next(obj.posX + obj.width, obj.posY + obj.height - 1, 2)){ //colidiu na direita na segunda quina
        return 2; //2
      } else if(' ' != base.next(obj.posX, obj.posY, 4)){ //colidiu na direita na primeira quina
        return 4; //4
      }  else if(' ' != base.next(obj.posX + obj.width, obj.posY, 4)){ //colidiu na direita na segunda quina
        return 4; //4
      }
    }
    return 0;
  }

int check2(var object, MatrixBase base){
    if(object is Square){
      return _checkSquare2(object, base);
    } else if(object is Circle){
      return _checkCircle2(object, base);
    } else if(object is Triangle){
      return _checkTriangle2(object, base);
    }
    return 0;
  }
}