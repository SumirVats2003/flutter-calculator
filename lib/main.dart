import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/button.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int firstNum = 0;
  int secondNum = 0;
  String history = '';
  String textToDisplay = '';
  String res = '';
  String operation = '';

  void btnOnClick(String btnVal) {
    if(btnVal == 'C') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
    }

    else if (btnVal == 'AC') {
      textToDisplay = '';
      firstNum = 0;
      secondNum = 0;
      res = '';
      history = '';
    }

    else if (btnVal == '<') {
      res = textToDisplay.substring(0, textToDisplay.length -1);
    }

    else if (
      btnVal == '+' ||
      btnVal == '-' ||
      btnVal == '*' ||
      btnVal == '/'
    ) {
      firstNum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    }

    else if (btnVal == '=') {
      secondNum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (firstNum + secondNum).toString();
      }
      else if (operation == '-') {
        res = (firstNum - secondNum).toString();
      }
      else if (operation == '*') {
        res = (firstNum * secondNum).toString();
      }
      else if (operation == '/') {
        res = (firstNum / secondNum).toString();
      }
      else {
        res = int.parse(textToDisplay + btnVal).toString();
      }
      
      history = firstNum.toString() + operation.toString() + secondNum.toString();
      
      setState(() {
        textToDisplay = res;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Calculator"),
        ),

        backgroundColor: HexColor('#1E1E1E'),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 12),
              child: Align(
                alignment: const Alignment(1.0, 1.0),
                child: Text(
                  history,
                  style: GoogleFonts.rubik(
                    fontSize: 24,
                    color: const Color(0x66FFFFFF),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Align(
                alignment: const Alignment(1.0, 1.0),
                child: Text(
                  textToDisplay,
                  style: GoogleFonts.rubik(
                    fontSize: 48,
                    color: Colors.white
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: 'AC', 
                  color: '#0EB1D2', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: 'C', 
                  color: '#0EB1D2', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '<',
                  color: '#34E4EA', 
                  textColor: '#000000',
                  callback: btnOnClick,
                ),

                Button(
                  text: '/', 
                  color: '#34E4EA', 
                  textColor: '#000000',
                  callback: btnOnClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '7', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '8', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '9', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '*', 
                  color: '#34E4EA', 
                  textColor: '#000000',
                  callback: btnOnClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '4', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '5', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '6', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '-', 
                  color: '#34E4EA', 
                  textColor: '#000000',
                  callback: btnOnClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '1', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '2', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '3', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '+', 
                  color: '#34E4EA', 
                  textColor: '#000000',
                  callback: btnOnClick,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: '.', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '0', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '00', 
                  color: '#2B4141', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),

                Button(
                  text: '=', 
                  color: '#51CB20', 
                  textColor: '#ffffff',
                  callback: btnOnClick,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
