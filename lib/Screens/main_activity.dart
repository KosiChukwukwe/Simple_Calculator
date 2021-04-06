import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_calculator/widgets/button.dart';


class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String calValue;
  String functionClicked;

  @override
  void initState() {
    calValue = '';
    functionClicked = '';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 210,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(right: 20),
            child: Text(
              calValue,
              style: TextStyle(
                fontSize: 50,
                color: Colors.white
              ),


            ),
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
                  Button(
                    "C",
                    hue: Colors.deepOrange,
                    buttonPressed: (){
                      changeValue("");

                    },
                  ),

                  Button("( )",hue: Colors.lightGreen[700],
                    buttonPressed: () {
                      String newText = '$calValue' + '( )';
                      changeValue(newText);
                    }
                          ),

                  Button("\%",hue: Colors.lightGreen[700],
                    buttonPressed: (){
                      String newText = '$calValue' + '\%';
                      changeValue(newText);

                    },
                  ),

                  Button("/",hue: Colors.lightGreen[700],
                    buttonPressed: (){
                    functionClicked = 'divide';
                      String newText = '$calValue' + '/';
                      changeValue(newText);

                    },
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button("7",
                    buttonPressed: (){
                      String newText = '$calValue' + '7';
                      changeValue(newText);
                    },
                  ),

                  Button("8",
                    buttonPressed: (){
                      String newText = '$calValue' + '8';
                      changeValue(newText);
                    },
                  ),

                  Button("9",
                    buttonPressed: (){
                      String newText = '$calValue' + '9';
                      changeValue(newText);
                    },
                  ),

                  Button("*",hue: Colors.lightGreen[700],
                    buttonPressed: (){
                      functionClicked = "*";
                      String newText = '$calValue' + '*';
                      changeValue(newText);

                    },
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Button("4",
                  buttonPressed: (){
                    String newText = '$calValue' + '4';
                    changeValue(newText);

                  },
                ),

                  Button("5",
                    buttonPressed: (){
                      String newText = '$calValue' + '5';
                      changeValue(newText);

                    },
                  ),

                  Button("6",
                    buttonPressed: (){
                      String newText = '$calValue' + '6';
                      changeValue(newText);

                    },
                  ),

                  Button("-",hue: Colors.lightGreen[700],
                    buttonPressed: (){
                    functionClicked = "-";
                      String newText = '$calValue' + '-';
                      changeValue(newText);

                    },
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button("1",
                    buttonPressed: (){
                      String newText = '$calValue' + '1';
                      changeValue(newText);

                    },
                  ),

                  Button("2",
                    buttonPressed: (){
                      String newText = '$calValue' + '2';
                      changeValue(newText);

                    },
                  ),

                  Button("3",  buttonPressed: (){
                    String newText = '$calValue' + '3';
                    changeValue(newText);

                  },
                  ),

                  Button("+",hue: Colors.lightGreen[700],
                    buttonPressed: (){
                      functionClicked = '+';
                      String newText = '$calValue' + '+';
                      changeValue(newText);

                    },
                  ),
                ],
              ),

              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button("+/-",
                    buttonPressed: (){
                      String newText = '$calValue' + '-';
                      changeValue(newText);

                    },
                  ),

                  Button("0",
                    buttonPressed: (){
                      String newText = '$calValue' + '0';
                      changeValue(newText);

                    },
                  ),

                  Button(".",
                    buttonPressed: (){
                      String newText = '$calValue' + '.';
                      changeValue(newText);
                    },
                  ),

                  Button("=",hue: Colors.white,color: Colors.lightGreen[700],
                    buttonPressed: (){
                     if(functionClicked == '+'){
                       List<String> splitValue = calValue.split('+');
                       String firstElement = splitValue[0];
                       String secondElement = splitValue[1];

                       int firstNumber = int.parse(firstElement);
                       int secondNumber = int.parse(secondElement);

                       int sum = firstNumber + secondNumber;

                       changeValue(sum.toString());
                     }else if(functionClicked == '-'){
                       List<String> splitValue = calValue.split('-');
                       String firstElement = splitValue[0];
                       String secondElement = splitValue[1];

                       int firstNumber = int.parse(firstElement);
                       int secondNumber = int.parse(secondElement);

                       int sum = firstNumber - secondNumber;

                       changeValue(sum.toString());
                     }
                     else if(functionClicked == 'divide'){
                       List<String> splitValue = calValue.split('/');
                       String firstElement = splitValue[0];
                       String secondElement = splitValue[1];

                       double firstNumber = double.parse(firstElement);
                       double secondNumber = double.parse(secondElement);

                       double sum = firstNumber / secondNumber;

                       changeValue(sum.toString());
                       }
                     else if(functionClicked == '*'){
                       List<String> splitValue = calValue.split('*');
                       String firstElement = splitValue[0];
                       String secondElement = splitValue[1];

                       int firstNumber = int.parse(firstElement);
                       int secondNumber = int.parse(secondElement);

                       int sum = firstNumber * secondNumber;

                       changeValue(sum.toString());
                     }
                    },
                  ),
                ],
              ),
             ],
          ),
       ) ],
      )
    );
  }

  changeValue(String value){
    setState(() {
      calValue = value;
    });
  }
}
