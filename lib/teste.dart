import 'dart:async';
import 'dart:io';

import 'package:dart_console/dart_console.dart';

final console = Console();

Future<void> read() async {
  var key = console.readKey();

  print(key);
}

void main() async {
  Timer.periodic(Duration(milliseconds: 10), (Timer t) async {
    t.cancel();
    await read();
  });

  Timer.periodic(Duration(milliseconds: 10), (Timer t) {
    print('while');
  });
}
