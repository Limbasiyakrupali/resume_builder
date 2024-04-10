import 'package:flutter/material.dart';
import 'package:resume_builder/screens/homepage.dart';
import 'package:resume_builder/screens/workspace.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const Homepage(),
      'workspace': (context) => const Workspace(),
    },
  ));
}
