import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Search_State();
  }
}
class Search_State extends State<Search>
{
  TextEditingController searchcontroller=TextEditingController();
  String search="";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
        child:TextFormField(
          style: TextStyle(color:Colors.white),
          validator: (value)
          {
            if(value!.isEmpty) {
              return "Please Enter value here !!";
            }
            return null;
          },

          controller: searchcontroller,
          cursorColor: Colors.white,
          obscureText: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Search",
            labelStyle: TextStyle(color:Colors.white,),
            suffix: IconButton(icon:Icon(Icons.search_outlined,color: Colors.white,),
              onPressed: ()
              {
                print("z");
              },
            ),

          ),
          onChanged: (val)
          {
            setState(() {
              search=val;
            });
          },
        ),
      ),
      ),
      body: Center(child: Text("Search value is :"+searchcontroller.text)),
    );
  }
}
