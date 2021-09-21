import 'package:flutter/material.dart';

class TextFormFieldApp extends StatefulWidget {
  @override
  _TextFormFieldAppState createState() => _TextFormFieldAppState();
}

class _TextFormFieldAppState extends State<TextFormFieldApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFormField"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            child: Column(
              children: [
                buildTextFormField("Name", "please enter name!"),
                buildTextFormField("SurName", "please enter surname!"),
                buildTextFormField("email", "please enter email!"),
                buildTextFormField("password", "please enter password!"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding buildTextFormField(label, hintText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          hintText: hintText,
          //contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
          ),
        ),
      ),
    );
  }
}
