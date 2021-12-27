import 'package:flutter/material.dart';
import '/insertcard.dart';

class PostCard extends StatelessWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Container - 1
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(1.0),
              margin: const EdgeInsets.all(2.0),
              color: Colors.blueAccent,
              //constraints: const BoxConstraints.tightForFinite(width: 10),
              child: const Center(
                child: Text('Want to make your own Postcard?',
                    style: TextStyle (
                      fontFamily: 'Montserrat',
                      fontSize: 20
                    )
                ),
              ),
              // child: Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10.0),
              //     image: const DecorationImage(
              //       image: AssetImage("assets/pc1.jpeg"),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
            ),
          ),
          //Container - 2
          Expanded(
            child: Container(
              // alignment : Alignment.center,
              padding: const EdgeInsets.all(1.0),
              margin: const EdgeInsets.all(2.0),
              color: Colors.blueAccent,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                    image: AssetImage("assets/pc3.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          //Container - 3
          Expanded(
            child: Container(
              // alignment : Alignment.center,
              padding: const EdgeInsets.all(1.0),
              margin: const EdgeInsets.all(2.0),
              color: Colors.blueAccent,
              child: Container(
                     decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10.0),
                       image: const DecorationImage(
                         image: AssetImage("assets/pc2.jpeg"),
                         fit: BoxFit.cover,
                      ),
                     ),
              ),
            ),
          ),
        ],

        ),
        floatingActionButton:  FloatingActionButton(
        child: const Icon(Icons.add),
        //Note :Replace
          // onPressed: Navigator.push(...)
          // with
          // onPressed: () => Navigator.push(...)
        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const InsertCard())),
          backgroundColor: Colors.purple,
        ),

      );
  }
}
