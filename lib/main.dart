import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:bdl_demo/amplifyconfiguration.dart';
import 'package:bdl_demo/core/presentation/router/app_router.dart';
import 'package:bdl_demo/core/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  _configureAmplify();
  runApp(const ProviderScope(child: MyApp()));
}

  Future<void> _configureAmplify() async {
    // Add any Amplify plugins you want to use
    final authPlugin = AmplifyAuthCognito();
    await Amplify.addPlugin(authPlugin);

    // You can use addPlugins if you are going to be adding multiple plugins
    // await Amplify.addPlugins([authPlugin, analyticsPlugin]);

    // Once Plugins are added, configure Amplify
    // Note: Amplify can only be configured once.
    try {
      await Amplify.configure(amplifyconfig);
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          "Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
    }
  }

final themeProvider = Provider<AppTheme>((ref) => AppTheme());

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Authenticator(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: AppRouter().router,
        title: 'Florida Panthers',
        theme: AppTheme().themeData,
      ),
    );
  }
}
