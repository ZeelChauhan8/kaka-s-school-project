import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kakas_school/main.dart';

class Student_List extends StatefulWidget {
  const Student_List({Key? key}) : super(key: key);

  @override
  _Student_ListState createState() => _Student_ListState();
}

class _Student_ListState extends State<Student_List> {
  List student = [];
  Future<void> fetch_stu() async {
    final String jsondata = await rootBundle.loadString("Api/student.json");
    final data = await json.decode(jsondata);
    setState(() {
      student = data['Student'];
    });
  }
  @override
  Widget build(BuildContext context) {

    fetch_stu();
    return Scaffold(
        appBar: AppBar(
          title: Text("Student Details"),
          backgroundColor: Colors.cyan,
          actions: [
            IconButton(icon:Icon(Icons.search),onPressed: (){
            },),
          ],
        ),
        body: Container(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  defaultColumnWidth: FixedColumnWidth(150.0),
                  border: TableBorder.all(),
                  children: [
                    TableRow(
                      decoration: BoxDecoration(
                        color:Colors.cyan[50],
                      ),
                        children: [
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Admission No"),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Roll No"),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Name"),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Class"),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Father Name"),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("D.O.B."),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Gender"),
                        ),
                      ),
                    ]),
                    TableRow
                      (children: [
                      TableCell(
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['admission_no']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['roll_no']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['name']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['class']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['father']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['dob']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['gender']),
                        ),
                      ),

                    ]),
                    TableRow
                      (children: [
                      TableCell(
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[1]['admission_no']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[1]['roll_no']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[1]['name']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[1]['class']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[1]['father']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[1]['dob']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[1]['gender']),
                        ),
                      ),

                    ]),
                    TableRow
                      (children: [
                      TableCell(
                        child:  Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['admission_no']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['roll_no']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['name']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['class']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['father']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['dob']),
                        ),
                      ),
                      TableCell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(student[0]['gender']),
                        ),
                      ),

                    ]),
                  ],
                ),
              ),
            )));
  }
}




