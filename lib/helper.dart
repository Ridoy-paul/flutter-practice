import 'package:flutter/material.dart';

/// Bottom NabBar / TabBar
class MyBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.leaderboard), label: 'Profile'),
        ],
        onTap: (int index) {
          if(index == 0) {
            MySnackBar.showSnackBar(context, "This is Home");
          }
          else if(index == 1) {
            MySnackBar.showSnackBar(context, "This is Cart");
          }
          else if (index == 2) {
            MySnackBar.showSnackBar(context, "This is Profile");
          }
        }
    );
  }
}

/// SnackBar
class MySnackBar {
  static void showSnackBar(BuildContext context, String mesage) {
    final snackBar = SnackBar(
      content: Text(mesage),
      duration: Duration(seconds: 1),
      action: SnackBarAction(
        label: 'Dismiss',
        onPressed: () {

        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

/// AppBar
class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  //AppSideBar check = new AppSideBar();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // leading: IconButton(
      //   onPressed: _openDrawer,
      //   icon: Icon(Icons.menu),
      //   color: Colors.amberAccent,
      //   iconSize: 35,
      // ),

      title: Text(
        'Home page',
        style: TextStyle(
          color: Colors.amberAccent,
        ),
      ),
      titleSpacing: 0,
      toolbarHeight: 70,
      toolbarOpacity: 1,
      elevation: 6,
      backgroundColor: Colors.deepPurple,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),

      actions: [
        IconButton(onPressed: (){
          print('clicked');
        }, icon: (Icon(Icons.account_circle))),
        IconButton(onPressed: (){}, icon: (Icon(Icons.shopping_cart))),
        IconButton(onPressed: (){}, icon: (Icon(Icons.widgets_sharp))),

      ],

      /*
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(4.0), // Adjust the height as needed
        child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            'Bottom Widget',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
       */

    );
  }
}


/// Navigation Drawer
class AppSideBar extends StatelessWidget {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
         DrawerHeader(
              child: SafeArea(child: Text("RIDOY Paul"))
          ),
          ListTile(title: Text("Home"),),
          ListTile(title: Text("Shop"),),
          ListTile(title: Text("Brands"),),
          ListTile(title: Text("About Us"),),
          ListTile(title: Text("Contact Us"),),

        ],
      ),

    );
  }

}
