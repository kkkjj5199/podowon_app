
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nameControllerProvider = Provider.autoDispose<TextEditingController>((ref) {
  final controller = TextEditingController();
  ref.onDispose(() {
    controller.clear();
    controller.dispose();
  });
  return controller;
});

final idControllerProvider = Provider.autoDispose<TextEditingController>((ref) {
  final controller = TextEditingController();
  ref.onDispose(() {
    controller.clear();
    controller.dispose();
  } );
  return controller;
});

final passwordControllerProvider = Provider.autoDispose<TextEditingController>((ref) {
  final controller = TextEditingController();
  ref.onDispose(() {
    controller.clear();
    controller.dispose();
  });
  return controller;
});

final passwordCheckControllerProvider = Provider.autoDispose<TextEditingController>((ref){
  final controller = TextEditingController();
  ref.onDispose(() {
    controller.clear();
    controller.dispose();
  });
  return controller;
});


