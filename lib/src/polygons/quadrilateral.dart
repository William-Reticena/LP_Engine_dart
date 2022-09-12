import 'package:lp_engine/src/utils/base.dart';

class Quadrilateral extends Base {
  void create(int width, int height) {
    createRow(0, width, '=', true);

    createArea(0, width, height, 0);

    if (height > 1) createRow(0, width, '=', true);
  }
}
