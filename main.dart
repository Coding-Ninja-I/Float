import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'postcard.dart';
import 'homepage.dart';
import 'inserttext.dart';

  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  runApp(const MaterialApp(
    home: Home(child : null),));
}

class Home extends StatefulWidget {
  const Home({Key? key, required child}) : super(key: key);
  @override

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const PostCard(),
    const Center(child: Text('Order'),),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar : true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
          leading: IconButton(
            icon:const Icon(Icons.supervisor_account_sharp), onPressed: () {  },
          ),
        title : const Text(
            'FLOAT',
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 3.0,
            color: Colors.white70,
          ),
        ),
        centerTitle: true,
      ),

      body:

      screens[currentIndex],

        bottomNavigationBar: BottomNavigationBar(

          selectedItemColor: Colors.purple,
          iconSize: 40,
          showSelectedLabels: false,
          showUnselectedLabels: false, //if you delete the labels from the icon, it will show error
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.limeAccent,
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.attach_email),
                label: 'Postcard',
              backgroundColor: Colors.limeAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Order',
              backgroundColor: Colors.limeAccent,
            ),

        ],
    ),
    );
  }
}

