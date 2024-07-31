import 'package:flutter/material.dart';

class AppTheme {
  static darkTheme() {
    return ThemeData(
      pageTransitionsTheme: PageTransitionsTheme(builders: {
        TargetPlatform.android: CustomPageTransition(),
        TargetPlatform.windows: CustomPageTransition(),
      }),
      scaffoldBackgroundColor: Colors.blueGrey.shade900,
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Colors.teal,
        cursorColor: Colors.lightBlue,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          ),
          elevation: const WidgetStatePropertyAll(5),
          minimumSize: const WidgetStatePropertyAll(Size(100, 45)),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 10,
      ),
      colorScheme: const ColorScheme.dark(),
    );
  }
}

class CustomPageTransition extends PageTransitionsBuilder {
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return FadeTransition(opacity: animation, child: child);
  }
}
