import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_calculator/widgets/button.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 210,
            width: MediaQuery.of(context).size.width,
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            margin: EdgeInsets.only(left: 50,right: 50),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.access_time_outlined,
                color: Colors.white,),

                Icon(Icons.rule,
                color: Colors.white,),

                Icon(Icons.calculate_rounded,
                color: Colors.white,),

                Icon(Icons.clear_outlined,
                color: Colors.lightGreen[800],),

              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              thickness: 0, color: Colors.grey[700],
            ),
          ),

       Container(
          width: MediaQuery.of(context).size.width,
          height: 300,
          margin: EdgeInsets.only(left: 30,right: 30,top: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Button("C",hue: Colors.deepOrange,)
                    ],
                  ),

                  Column(
                    children: [
                      Button("( )",hue: Colors.lightGreen[700],)
                    ],
                  ),

                  Column(
                    children: [
                      Button("\%",hue: Colors.lightGreen[700],)
                    ],
                  ),

                  Column(
                    children: [
                      Button("\\",hue: Colors.lightGreen[700],)
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Button("7",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("8",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("9",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("*",hue: Colors.lightGreen[700],)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Button("4",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("5",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("6",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("-",hue: Colors.lightGreen[700],)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Button("1",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("2",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("3",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("+",hue: Colors.lightGreen[700],)
                    ],
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Button("+/-",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("0",)
                    ],
                  ),

                  Column(
                    children: [
                      Button(".",)
                    ],
                  ),

                  Column(
                    children: [
                      Button("=",hue: Colors.white,color: Colors.lightGreen[700],)
                    ],
                  ),
                ],
              ),




             ],
          ),
       ) ],
      )
    );
  }
}
