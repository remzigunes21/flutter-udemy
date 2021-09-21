import 'dart:math';

import 'package:flutter/material.dart';

class ListViewUse extends StatelessWidget {
  List<Student> studentList = List.generate(
    50000,
    (index) => Student(
        index + 1, "StudentName ${index + 1}", "StudentLastName ${index + 1}"),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Example"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            var newIndex = index + 1;
            if (newIndex % 4 == 0) {
              return Divider(color: Colors.teal, thickness: 2);
            }

            return SizedBox();
          },
          itemCount: studentList.length,
          itemBuilder: (BuildContext context, int index) {
            var selectStudent = studentList[index];
            return Card(
              color:
                  index % 2 == 0 ? Colors.red.shade700 : Colors.blue.shade400,
              margin: EdgeInsets.all(8),
              child: ListTile(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.cyan.shade400,
                    margin: EdgeInsets.all(8),
                    behavior: SnackBarBehavior.floating,
                    content: Text("Sending Message"),
                  ));
                },
                onLongPress: () {
                  _alertDialogOption(context, selectStudent);
                },
                leading:
                    CircleAvatar(child: Text(studentList[index].id.toString())),
                title: Text(studentList[index].name),
                subtitle: Text(studentList[index].lastName),
                trailing: Icon(Icons.accessibility_new_sharp),
              ),
            );
          }),
    );
  }

  ListView buildListViewBuilder() {
    return ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: index % 2 == 0 ? Colors.red.shade700 : Colors.blue.shade400,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading:
                  CircleAvatar(child: Text(studentList[index].id.toString())),
              title: Text(studentList[index].name),
              subtitle: Text(studentList[index].lastName),
              trailing: Icon(Icons.accessibility_new_sharp),
            ),
          );
        });
  }

  ListView buildListViewClassic() {
    return ListView(
      children: studentList
          .map(
            (e) => Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                leading: CircleAvatar(child: Text(e.id.toString())),
                title: Text(e.name),
                subtitle: Text(e.lastName),
                trailing: Icon(Icons.accessibility_new_sharp),
              ),
            ),
          )
          .toList(),
    );
  }

  void _alertDialogOption(myContext, Student student) {
    showDialog(
        context: myContext,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(student.name),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Do your want to Accept?" * 100),
                ],
              ),
            ),
            actions: [
              ButtonBar(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Yes"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("No"),
                  ),
                ],
              ),
            ],
            backgroundColor: Colors.cyan.shade400,
          );
        });
  }
}

class Student {
  final int id;
  final String name;
  final String lastName;

  Student(this.id, this.name, this.lastName);
}
