import 'package:flutter/material.dart';

class TextFieldApp extends StatefulWidget {
  @override
  _TextFieldAppState createState() => _TextFieldAppState();
}

class _TextFieldAppState extends State<TextFieldApp> {
  TextEditingController _emailController;
  FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = TextEditingController(text: "remzi@gmail.com");

    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  _emailController.value = TextEditingValue(
                    text: value,
                    selection: TextSelection.collapsed(offset: value.length),
                  );
                });
              },
              keyboardType: TextInputType.number,
              controller: _emailController,
              focusNode: _focusNode,
              maxLines: maxLineCount,
              decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter Email",
                  //icon: Icon(Icons.ac_unit_outlined),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(_emailController.text),
          ),
          TextField()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            _emailController.text = "nejla@gmail.com";
          });
        },
      ),
    );
  }
}
