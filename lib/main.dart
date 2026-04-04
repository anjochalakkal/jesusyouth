import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jesusyouth/app.dart';
import 'package:jesusyouth/di/injection_container.dart';
import 'package:jesusyouth/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
