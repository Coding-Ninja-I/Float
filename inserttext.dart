import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InsertText extends StatefulWidget {
  const InsertText({Key? key}) : super(key: key);

  @override
  _InsertTextState createState() => _InsertTextState();
}

class _InsertTextState extends State<InsertText> {
  var firestoreDB =
  FirebaseFirestore.instance.collection("postaladd").snapshots();
  late TextEditingController nameInputController;
  late TextEditingController addressInputController;
  late TextEditingController cityInputController;
  late TextEditingController postcodeInputController;
  late TextEditingController stateInputController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameInputController = TextEditingController();
    addressInputController = TextEditingController();
    cityInputController = TextEditingController();
    postcodeInputController = TextEditingController();
    stateInputController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(40.0),
          child:
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                const Text(
                  "Here to Send",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                const Text(
                  "Postcard !",
                  style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: TextFormField(
                    controller: nameInputController,
                    decoration: const InputDecoration(
                      hintText: "Enter recipient's name",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: TextFormField(
                    controller: addressInputController,
                    maxLines: 5,
                    decoration: const InputDecoration(
                      hintText: "Address",
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: TextFormField(
                    controller: cityInputController,
                    decoration: const InputDecoration(hintText: "City"),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: TextFormField(
                    controller: stateInputController,
                    decoration: const InputDecoration(hintText: "State"),
                  ),
                ),
                /* const SizedBox(
                      height: 10.0,
                    ),*/
                Expanded(
                  child: TextFormField(
                    controller: postcodeInputController,
                    decoration: const InputDecoration(hintText: "Postcode"),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                    onPressed: () {
                      FirebaseFirestore.instance.collection("postaladd").add({
                        "Name": nameInputController.text,
                        "Address": addressInputController.text,
                        "City": cityInputController.text,
                        "Postcode": postcodeInputController.text,
                        "State": stateInputController.text,
                      }).then((value) {
                        print(value.id);
                        nameInputController.clear();
                        addressInputController.clear();
                        cityInputController.clear();
                        postcodeInputController.clear();
                        stateInputController.clear();
                      });
                    },
                    child: const Text("Create"))
              ]),
        ),
      ),
    );
  }
}
