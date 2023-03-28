import 'package:store/Splach_Screen/pages/Splach_Screen.dart';
import 'package:store/Thankyou_page/page/Thankyou_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpalchScreen(),
    );
  }
}
