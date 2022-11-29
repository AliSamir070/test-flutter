import 'package:flutter/material.dart';

class User{
  static int idGenerator = 0;
  late final int id;
  final String name;
  final String number;
  final Color color;
  User({required this.name,required this.color,required this.number}){
    id = idGenerator;
    idGenerator++;
  }
}