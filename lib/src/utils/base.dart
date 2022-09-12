class Base {
  String createRow(int left, int right, String char, bool outline) {
    String row = right > 0 ? '|' : '';

    for (int i = left; i < right - 2; i++) {
      row += char;
    }

    if (right > 1) row += '|';

    if (outline) print(row);

    return row;
  }

  void createArea(int top, int right, int bottom, int left) {
    for (int i = top; i < bottom - 2; i++) {
      createRow(left, right, ' ', true);
    }
  }
}
