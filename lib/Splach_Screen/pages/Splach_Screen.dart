import 'package:store/Languge_Screen/pages/Languge_Screen.dart';
import 'package:flutter/material.dart';



class SpalchScreen extends StatefulWidget {
  @override
  _SpalchScreenState createState() => _SpalchScreenState();
}

class _SpalchScreenState extends State<SpalchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/logo2.png"))
          ],
        ),

      ),
    );
  }

  @override
  void initState() {

    delay();

    super.initState();
  }
  void delay(){
    Future.delayed(Duration(seconds: 2) , () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  LangugeScreen()),
      );
    }
    );
  }
}
