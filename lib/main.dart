import 'package:flutter/material.dart';
import 'package:instagram_clone_app/features/presentation/screens/credential/sign_in_page.dart';
import 'package:instagram_clone_app/features/presentation/screens/credential/sign_up_page.dart';
import 'package:instagram_clone_app/features/presentation/screens/main_screen/main_screen.dart';
import 'package:instagram_clone_app/on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),
      onGenerateRoute: OnGenerateRoute.route,
      initialRoute: "/",
      routes: {
        "/": (context){
          return SignInPage();
        }
      },
      //home: const MainScreen(),
    );
  }
}