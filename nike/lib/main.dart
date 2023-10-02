import 'package:flutter/material.dart';
import 'package:nike/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const defaultTextStyle = TextStyle(
        fontFamily: 'IranYekan', color: LightThemeColors.primaryTextColor);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'IranYekan',
        textTheme: TextTheme(
            bodyMedium: defaultTextStyle,
            titleLarge: defaultTextStyle.copyWith(fontWeight: FontWeight.bold),
            bodySmall: defaultTextStyle.apply(
                color: LightThemeColors.secondaryTextColor)),
        colorScheme: const ColorScheme.light(
            primary: LightThemeColors.primaryColor,
            secondary: LightThemeColors.secondaryColor,
            onSecondary: Colors.white),
        useMaterial3: true,
      ),
      home:
          Directionality(textDirection: TextDirection.rtl, child: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('آبوجی دودو'),
            Text(
              'آبوجی دودو',
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
