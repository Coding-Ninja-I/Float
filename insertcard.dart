import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'inserttext.dart';


class InsertCard extends StatefulWidget {
  const InsertCard({Key? key}) : super(key: key);

  @override
  _InsertCardState createState() => _InsertCardState();
}

class _InsertCardState extends State<InsertCard> {
  dynamic file;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title : const Text(
          'Add Image',
          style: TextStyle(
            fontSize: 25.0,
            letterSpacing: 3.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
          child :Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  child: const Text("Select Images"),
                  onPressed : (){
                    imagePicker();
                  }
              ),
                if(file != null)
                  Image.file(file,
                  width : double.infinity,
                  height : 400,
                  fit : BoxFit.cover)
            ],
          ),
      ),



      floatingActionButton:  FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        //Note :Replace
        // onPressed: Navigator.push(...)
        // with
        // onPressed: () => Navigator.push(...)
        onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context) => const InsertText())),
       backgroundColor: Colors.purple,
      ),
    );
  }

  void imagePicker() async{
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image!=null)
        {
          setState(() {
            file = File(image.path);
          });
        }
  }
  }
