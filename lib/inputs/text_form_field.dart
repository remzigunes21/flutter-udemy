import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class TextFormFieldApp extends StatefulWidget {
  @override
  _TextFormFieldAppState createState() => _TextFormFieldAppState();
}

class _TextFormFieldAppState extends State<TextFormFieldApp> {
  String _email = "", _password = "", _userName = "";

  final _formKey = GlobalKey<FormState>();
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
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  onSaved: (newValue) {
                    _userName = newValue;
                  },
                  validator: (value) {
                    if (value.length < 4) {
                      return "Lütfen 4 ten fazla karakter gir";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: "User Name enter",

                    //contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    _email = newValue;
                  },
                  validator: (value) {
                    final bool isValid = EmailValidator.validate(value);
                    if (value.isEmpty) {
                      return "email is not empty";
                    } else if (!isValid) {
                      return "Lütfen email şartlarını sağlayınız";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Email enter",

                    //contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  onSaved: (newValue) {
                    _password = newValue;
                  },
                  validator: (value) {
                    if (value.length < 8) {
                      return "Lütfen 8 den fazla karakter gir";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Password enter",

                    //contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      bool isValid = _formKey.currentState.validate();
                      if (isValid) {
                        _formKey.currentState.save();
                        String result =
                            "user_name: $_userName \n email: $_email \n password:$_password";
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(result),
                        ));
                      }

                      _formKey.currentState.reset();
                    },
                    child: Text("Submit Form"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  TextFormField buildTextFormField(label, hintText, isValid) {
    return TextFormField(
      validator: (value) {
        if (isValid) {
          if (value.length < 4) {
            return "name length is four charcters";
          } else {
            return null;
          }
        }
      },
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,

        //contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
      ),
    );
  }
}
