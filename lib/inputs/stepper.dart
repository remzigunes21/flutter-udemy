import 'package:flutter/material.dart';

class StepperApp extends StatefulWidget {
  @override
  _StepperAppState createState() => _StepperAppState();
}

class _StepperAppState extends State<StepperApp> {
  int _index = 0;
  String username;
  bool error = false;

  final keyInput1 = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Stepper Widget"),
        ),
        body: Stepper(
          currentStep: _index,
          onStepCancel: () {
            if (_index > 0) {
              setState(() {
                _index--;
              });
            }
          },
          onStepContinue: () {
            if (_index <= 0) {
              setState(() {
                _continueButtonControl();
              });
            }
          },
          onStepTapped: (int index) {
            setState(() {
              if (!error) {
                _index = index;
              }
            });
          },
          steps: <Step>[
            Step(
              title: const Text('Step 1 title'),
              content: Container(
                alignment: Alignment.centerLeft,
                child: TextFormField(
                  key: keyInput1,
                  onSaved: (newValue) {
                    username = newValue;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Bu alan boş bırakılamaz";
                    } else if (value.length < 4) {
                      return "Lütfen en az 4 karakter giriniz.";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "user name",
                    contentPadding: EdgeInsets.all(8),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                    ),
                  ),
                ),
              ),
            ),
            const Step(
              title: Text('Step 2 title'),
              content: Text('Content for Step 2'),
            ),
          ],
        ));
  }

  void _continueButtonControl() {
    switch (_index) {
      case 0:
        if (keyInput1.currentState.validate()) {
          keyInput1.currentState.save();
          error = false;

          _index = 1;
        } else {
          error = true;
        }
        break;
      default:
    }
  }
}
