import 'package:cardify/pages/home.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final class CardifyApp extends StatelessWidget {
  const CardifyApp({super.key});

  @override
  Widget build(BuildContext context) => DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => MaterialApp(
            title: 'Cardify',
            theme: ThemeData.from(
                colorScheme: lightDynamic ?? const ColorScheme.light()),
            darkTheme: ThemeData.from(
                colorScheme: darkDynamic ?? const ColorScheme.dark()),
            debugShowCheckedModeBanner: false,
            home: const HomePage(title: "Cardify"),
            themeMode: ThemeMode.dark,
          ));
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent));
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  runApp(const CardifyApp());
}
