import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      title: "My App",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
        fontFamily: 'Roboto',
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          titleMedium: TextStyle(fontSize: 15),
          titleSmall: TextStyle(fontSize: 13),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 18,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            textStyle: TextStyle(
              letterSpacing: 2,
              fontSize: 15.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ApplicationAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Card(
                        elevation: 10, // Shadow elevation
                        margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            ElevatedButton(onPressed: (){}, child: Text("Elevated Button")),
                            TextButton(onPressed: (){}, child: Text('Text Button')),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo)),
                            OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined), label: Text("Take A Photo")),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.add_a_photo_outlined, color: Colors.deepOrange),
                                    Container(
                                      child: Text("Camera"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.add_alert, color: Colors.deepOrange),
                                    Container(
                                      child: Text("Notifications"),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Icon(Icons.account_circle, color: Colors.deepOrange),
                                    Container(
                                      child: Text("Profile"),
                                    )
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ApplicationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ApplicationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("My Practice App"),
      backgroundColor: Colors.deepOrange,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu),),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo_outlined), tooltip: "Camera",),
        IconButton(onPressed: (){}, icon: Icon(Icons.account_box), tooltip: "Profile",),
        IconButton(onPressed: (){}, icon: Icon(Icons.add_alert), tooltip: "Notifications",),


      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}

