import 'package:flutter/material.dart';
import 'package:jesusyouth/di/injection_container.dart';
import 'package:jesusyouth/routes/app_router.dart';

void main() async {
  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: AppRouter.goRouter);
  }
}
