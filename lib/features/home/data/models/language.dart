import 'package:flutter/material.dart';
import '/core/utils/resources/extensions.dart';

class LangModel {
  final String title;
  final String img;

  LangModel(this.title, this.img);
}

List<LangModel> langModel(BuildContext context) {
  return [
    LangModel(context.locale.arabic, 'sa'),
    LangModel(context.locale.english, 'us'),
  ];
}