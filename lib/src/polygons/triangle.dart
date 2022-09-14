import 'dart:io';

class Triangle {
  void create(int height, String simbol) {
    for(int k = 1; k <= height; k++){
      for(int j = 1; j <= height- k; j++){
        stdout.write(' ');
      }
      for(int i = 1; i <= 2 * k - 1; i++){
        stdout.write(simbol);
      }
      print('');
    } 
  }
}
