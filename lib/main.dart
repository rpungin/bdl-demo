import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:bdl_demo/features/games/presentation/root/root_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MyApp()));
}

final themeProvider = Provider<AppTheme>((ref) => AppTheme());

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final theme = ref.read(themeProvider);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Florida Panthers',
      theme: AppTheme().themeData,
      home: const RootPage(),
    );
  }
}
