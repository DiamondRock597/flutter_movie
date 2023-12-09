import 'package:first_app/widgets/auth/auth_widget.dart';
import 'package:first_app/widgets/main/main_screen_widget.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(3, 37, 65, 1),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromRGBO(3, 37, 65, 1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: <String, WidgetBuilder>{
        '/': (context) => const AuthWidget(),
        '/main_screen': (context) => const MainScreenWidget(),
      },
      initialRoute: '/',
    );
  }
}
