import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_storage/firebase_storage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.deepOrange],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                height: 300,
                color: Colors.transparent,
                  child: Center(
                    child: AnimatedTextKit(animatedTexts:[
                      FadeAnimatedText('Welcome Everyone!',
                        textStyle: const TextStyle(fontSize: 40.0,letterSpacing: 3.0))
                      ]),
                  ),


                  /*Text(
                    'Welcome To Float',
                    style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 30,
                        fontFamily: 'Montserrat'),
                  ),*/
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                color: Colors.deepPurple[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                color: Colors.deepPurple[200],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                color: Colors.deepPurple[200],
              ),
            ),
      ]
        ),
    ),
    /*  Future<Widget> _getImage(BuildContext context, String imageName)  async {
        Image image;
        await FireStorageService.loadImage(context,imageName).then((value)) {
          image = Image.network(value.toString(),
              fit :BoxFit.scaleDown,
          );
          };
    }*/
    );
  }
}

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static  Future<dynamic> loadImage(BuildContext context,String Image) async{
    return await FirebaseStorage.instance.ref().child(Image).getDownloadURL();
  }
}


