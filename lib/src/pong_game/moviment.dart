import 'dart:io';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/polygons/square.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';
//funcionando 100%
class Moviment{


  void movimentTriangle(Triangle obj, MatrixBase base, int x, int y){
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
        //base.show(); //movimentação
      } 
    }
    if(origemX == finalX){
      while(origemY != finalY){
        obj.objDelete(base);
        if(y > 0){
        obj.objTomatrix(base, obj.posX, obj.posY + 1);
        origemY++;
        //base.show();
      } else if(y < 0){
        obj.objTomatrix(base, obj.posX, obj.posY - 1);
        origemY--;
        //base.show();
      }
    }
    }
     if(origemY == finalY){
      while(origemX != finalX){
        obj.objDelete(base);
        if(x > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY);
        origemX++;
        //base.show();
      } else if(x < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY);
        origemX--;
        //base.show();
      }
    }
    }
  }
  
  void movimentSquare(Square obj, MatrixBase base, int x, int y){
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
        //base.show(); //movimentação
      }
    }
    if(origemX == finalX){
      while(origemY != finalY){
        obj.objDelete(base);
        if(y > 0){
        obj.objTomatrix(base, obj.posX, obj.posY + 1);
        origemY++;
        //base.show();
      } else if(y < 0){
        obj.objTomatrix(base, obj.posX, obj.posY - 1);
        origemY--;
        //base.show();
      }
    }
    }
     if(origemY == finalY){
      while(origemX != finalX){
        obj.objDelete(base);
        if(x > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY);
        origemX++;
        //base.show();
      } else if(x < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY);
        origemX--;
        //base.show();
      }
    }
    }
  }

  /*void movimentCircle(Circle obj, MatrixBase base, int x, int y){
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
        base.show(); //movimentação
      }
      if(origemX == finalX){
      while(origemY != finalY){
        obj.objDelete(base);
        if(y > 0){
        obj.objTomatrix(base, obj.posX, obj.posY + 1);
        origemY++;
        //base.show();
      } else if(y < 0){
        obj.objTomatrix(base, obj.posX, obj.posY - 1);
        origemY--;
        //base.show();
      }
    }
    }
     if(origemY == finalY){
      while(origemX != finalX){
        obj.objDelete(base);
        if(x > 0){
        obj.objTomatrix(base, obj.posX + 1, obj.posY);
        origemX++;
        //base.show();
      } else if(x < 0){
        obj.objTomatrix(base, obj.posX - 1, obj.posY);
        origemX--;
        //base.show();
      }
    }
    }
    }
  }*/
}


