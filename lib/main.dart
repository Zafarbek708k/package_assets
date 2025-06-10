import 'dart:io';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dir = Directory('assets/images');
  final files = dir.listSync().where((file) => file is File && file.path.endsWith('.png')).toList();

  final buffer = StringBuffer();
  buffer.writeln('final iconPaths = [');

  for (int i = 0; i < files.length; i++) {
    final path = files[i].path.replaceAll('\\', '/');
    buffer.writeln("  '$path',");
  }

  buffer.writeln('];');

  File('lib/generated_icons.dart').writeAsStringSync(buffer.toString());

  print('✅ lib/generated_icons.dart fayli yaratildi!');

  runApp(MaterialApp(home: Scaffold(appBar: AppBar(title: Text("Title")))));
}
