import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../presentation/resources/theme_manager.dart';
import '../presentation/screens/get_data_screen.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'SkyHigh',
      debugShowCheckedModeBanner: false,
      home: const GetDataScreen(),
      theme: getApplicationTheme(),
    );
  }
}
