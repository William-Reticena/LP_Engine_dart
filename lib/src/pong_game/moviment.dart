import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';
//funcionando 100% tudo certo
class Moviment{

  void _movimentTriangle(Triangle obj, MatrixBase base, int x, int y){
    int origemX = obj.posX;
    int origemY = obj.posY;
    int finalX = obj.posX + x;
    int finalY = obj.posY + y;
    while(origemX != finalX && origemY != finalY){
      obj.objDelete(base);
      if(x < 0 && y < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY - 1);
        origemX--;
        origemY--;
      } else if(x < 0 && y > 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY + 1);
        origemX--;
        origemY++;
      } else if(x > 0 && y < 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY - 1);
        origemX++;
        origemY--;
      } else if(x > 0 && y > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY + 1);
        origemX++;
        origemY++;
      } 
    }
    if(origemX == finalX){
      while(origemY != finalY){
        obj.objDelete(base);
        if(y > 0){
        obj.objTomatrix(base, obj.posX, obj.posY + 1);
        origemY++;
      } else if(y < 0){
        obj.objTomatrix(base, obj.posX, obj.posY - 1);
        origemY--;
      }
    }
    }
     if(origemY == finalY){
      while(origemX != finalX){
        obj.objDelete(base);
        if(x > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY);
        origemX++;
      } else if(x < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY);
        origemX--;
      }
    }
    }
  }
  
  void _movimentSquare(Square obj, MatrixBase base, int x, int y){
    int origemX = obj.posX; //posição inicial passada na criação do objeto em X
    int origemY = obj.posY; //posição inicial passada na criação do objeto em Y
    int finalX = obj.posX + x; //esta tera que ser a posição final em X
    int finalY = obj.posY + y; //esta tera que ser a posição final em Y
    while(origemX != finalX && origemY != finalY){ //estou movendo o objeto em X e Y
      obj.objDelete(base); //apago o objeto
      if(x < 0 && y < 0){ //objeto sobe uma posiçao e vai uma posicao para a esquerda
        obj.objTomatrix(base, obj.posX - 1, obj.posY - 1); //recrio o objeto com as novas coordenadas
        origemX--;
        origemY--;
      } else if(x < 0 && y > 0){ //objeto sobe uma posição e vai uma posicao para a direita
        obj.objTomatrix(base, obj.posX - 1, obj.posY + 1);
        origemX--;
        origemY++;
      } else if(x > 0 && y < 0){ //objeto desce uma posicao e vai uma posicao para a esquerda
        obj.objTomatrix(base, obj.posX + 1, obj.posY - 1);
        origemX++;
        origemY--;
      } else if(x > 0 && y > 0){ //obejto desce uma posiçao e vai uma posicao para a direita
        obj.objTomatrix(base, obj.posX + 1, obj.posY + 1);
        origemX++;
        origemY++;
      }
    }
    if(origemX == finalX){ //vou movimentar o objeto so em Y (direita e esqueda)
      while(origemY != finalY){
        obj.objDelete(base);
        if(y > 0){ //direita
        obj.objTomatrix(base, obj.posX, obj.posY + 1);
        origemY++;
      } else if(y < 0){ //esquerda
        obj.objTomatrix(base, obj.posX, obj.posY - 1);
        origemY--;
      }
    }

    }
     if(origemY == finalY){ //vou movimenta o objeto so em X (cima e baixo)
      while(origemX != finalX){
        obj.objDelete(base);
        if(x > 0){ //baixo
        obj.objTomatrix(base, obj.posX + 1, obj.posY);
        origemX++;
      } else if(x < 0){ //cima
        obj.objTomatrix(base, obj.posX - 1, obj.posY);
        origemX--;
      }
    }
    }
}

  void _movimentCirlce(Circle obj, MatrixBase base, int x, int y){
    int origemX = obj.posX;
    int origemY = obj.posY;
    int finalX = obj.posX + x;
    int finalY = obj.posY + y;
    while(origemX != finalX && origemY != finalY){
      obj.objDelete(base);
      if(x < 0 && y < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY - 1);
        origemX--;
        origemY--;
      } else if(x < 0 && y > 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY + 1);
        origemX--;
        origemY++;
      } else if(x > 0 && y < 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY - 1);
        origemX++;
        origemY--;
      } else if(x > 0 && y > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY + 1);
        origemX++;
        origemY++;
      }
    }
    if(origemX == finalX){
      while(origemY != finalY){
        obj.objDelete(base);
        if(y > 0){
        obj.objTomatrix(base, obj.posX, obj.posY + 1);
        origemY++;
      } else if(y < 0){
        obj.objTomatrix(base, obj.posX, obj.posY - 1);
        origemY--;
      }
    }
    }
     if(origemY == finalY){
      while(origemX != finalX){
        obj.objDelete(base);
        if(x > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY);
        origemX++;
      } else if(x < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY);
        origemX--;
      }
    }
    }
  }

  //Método para realizar a movimentação
  void moviment(var object, MatrixBase base, int x, int y){
    if(object is Square){
      _movimentSquare(object, base, x, y);
    } else if(object is Circle){
      _movimentCirlce(object, base, x, y);
    } else if(object is Triangle){
      _movimentTriangle(object, base, x, y);
    }
  }
}


