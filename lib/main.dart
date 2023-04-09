import 'package:dersler/sayfalar/listtile.dart';
import 'package:dersler/seviye%203/partof.dart';
import 'package:dersler/seviye2/animasyonlar.dart';
import 'package:dersler/seviye2/diyalog.dart';
import 'package:dersler/seviye2/sheetprefernces.dart';
import 'package:dersler/seviye2/textformfield.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          backgroundColor: Colors.transparent,
          appBarTheme:
              const AppBarTheme(elevation: 0, color: Colors.transparent)),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: PartofLearn(),
    );
  }
}
