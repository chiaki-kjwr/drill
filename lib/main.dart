import 'package:drill/practice/practice01.dart';
import 'package:drill/practice/practice02.dart';
import 'package:drill/practice/practice03.dart';
import 'package:drill/practice/practice04.dart';
import 'package:drill/practice/practice13.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('課題4'),
        ),
        body: Practice4(),
      ),
    ),
  );
}
