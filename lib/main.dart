import 'package:flutter/material.dart';
import 'helper.dart';

/// Main
void main() {
  return runApp(const  MyApp());
}

// MyApp Class
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// MaterialApp
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.red,
          primarySwatch: Colors.green,
          primaryColorDark: Colors.black,
        ),
        darkTheme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home:HomeActivity()
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      bottomNavigationBar: MyBottomNavBar(),
      body: SafeArea(
        child: Center(
          child: Text(
            "Hello Ridoy Paul",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blue,
              fontWeight: FontWeight.w700,
            )
          ),
        ),
      ),
      drawer: AppSideBar(),

    );
  }
}
