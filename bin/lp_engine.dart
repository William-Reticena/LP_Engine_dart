import 'dart:io';
import 'package:lp_engine/lp_engine.dart';
import 'package:lp_engine/src/polygons/circle.dart';
import 'package:lp_engine/src/polygons/triangle.dart';
import 'package:lp_engine/src/pong_game/ball.dart';
import 'package:lp_engine/src/pong_game/moviment.dart';
import 'package:lp_engine/src/utils/matrix_base.dart';
import 'package:lp_engine/src/pong_game/colision.dart';

void main(List<String> arguments) {
  PongCourt base = PongCourt();
  MatrixBase court = base.create();
  Ball ball = Ball();
  ball.init(court);
  court.show();
}
