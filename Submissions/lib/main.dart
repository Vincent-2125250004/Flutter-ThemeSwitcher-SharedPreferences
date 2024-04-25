import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:submissions/main_screen.dart';

import 'color_schemes.g.dart';
import 'theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, _) {
        return MaterialApp(
          theme: themeProvider.isDarkMode ? ThemeData(useMaterial3: true, colorScheme: darkColorScheme) : ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
          home: const MainScreen(),
          debugShowCheckedModeBanner: false,
        );
      },
    );


    // return MaterialApp(
    //   theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
    //   darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
    //   home: const MainScreen(),
    //   debugShowCheckedModeBanner: false,
    // );
  }
}


