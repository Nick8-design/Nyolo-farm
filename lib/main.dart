import 'dart:convert';

import 'package:birds/providers.dart';
import 'package:birds/screens/bird_item/buy_bard.dart';
import 'package:birds/screens/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'components/constants.dart';
import 'home/home.dart';
import 'models/bird_model.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  final sharedPrefs = await SharedPreferences.getInstance();

  runApp(
      ProviderScope(
          overrides: [
    sharedPrefProvider.overrideWithValue(sharedPrefs),

  ], child: const MyApp()));
}

//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => BirdProvider(),
//       child: const MyApp(),
//     ),
//   );
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _Bird();
}

class _Bird extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;
  ColorSelection colorSelected = ColorSelection.orange;

  late final _router=GoRouter(
      initialLocation: '/0',
      routes: [
        GoRoute(
            path: '/:tab',
            builder: (context,state){
              return Home(
                  changeTheme: changeThemeMode,
                  changeColor: changeColor,
                  colorSelected: colorSelected,
                  tab: int.tryParse(state.pathParameters['tab'] ?? '') ?? 0
              );
            },
      routes: [
        GoRoute(
            path: '/contact',
            builder: (context,state){
             Bird bird=state.extra as Bird;

              return BuyBard(
                bird: bird,
              );

            }),
            ]



        ),






      ],
      errorPageBuilder: (context,state){
        return MaterialPage(
            key: state.pageKey,
            child: Scaffold(
              body: Center(
                child: Text(
                  state.error.toString(),
                ),
              ),
            )

        );
      }

  );


  void changeThemeMode(bool useLightMode) {
    setState(() {
      themeMode = useLightMode
          ? ThemeMode.light //
          : ThemeMode.dark;
    });
  }
  void changeColor(int value) {
    setState(() {
      colorSelected = ColorSelection.values[value];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Birds',
      routerConfig: _router,
      themeMode: themeMode,
      theme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
    );
  }
}
