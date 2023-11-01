import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web2/Helper/AppHelpers.dart';
import 'package:flutter_web2/Model/model_lang.dart';
import 'package:flutter_web2/Model/routes.dart';
import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'podstate.g.dart';

@riverpod
Future<ModelLang> langModel(LangModelRef ref)async{
  final data = await rootBundle.loadString('assets/language/en.json');
  return ModelLang.fromJson(jsonDecode(data));
}