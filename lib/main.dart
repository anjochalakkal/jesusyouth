import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:jesusyouth/app.dart';
import 'package:jesusyouth/di/injection_container.dart';
import 'package:jesusyouth/firebase_options.dart';

void main() async {
  await init();
    WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}


