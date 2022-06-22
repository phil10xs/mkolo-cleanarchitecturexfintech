import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:mobile_assesment/config/theme/theme.dart';
import 'package:mobile_assesment/core/di/injection_container.dart';
import 'package:mobile_assesment/features/dashboard/presentation/views/dashboard.dart';
import 'package:mobile_assesment/injector.dart';
import 'package:provider/provider.dart';

import 'config/routes/route.dart';
import 'config/routes/route_config.dart';
import 'features/dashboard/presentation/notifier/data.dart';
import 'features/dashboard/presentation/views/splash.dart';

void main() {
  configureDependencies().then((_) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: sl<MyNotifier>())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Assesment',
        theme: theme(context),
        home: const SplashScreen(),
        onGenerateRoute: Application.router.generator,
      ),
    );
  }
}
