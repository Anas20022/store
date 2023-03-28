import 'package:store/Slider_Screen/pages/Slider_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LangugeScreen extends StatefulWidget {
  @override
  _LangugeScreenState createState() => _LangugeScreenState();
}

class _LangugeScreenState extends State<LangugeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Column(

          children: [
            Center(child: Image.asset("assets/images/logo2.png",
              height:MediaQuery.of(context).size.height/2 ,
              width:MediaQuery.of(context).size.width/2 ,
              )
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SliderScreen()),
                );

              },
              child: Container(
                 alignment: Alignment.center,
                 // color: Colors.red,
                 height: MediaQuery.of(context).size.height/15,
                 width: MediaQuery.of(context).size.width/3,
                 decoration: BoxDecoration(
                   color: Colors.white,
                   border: Border.all(color: Color(0xFFBBABAB),width: 1.3,),
                   borderRadius: BorderRadius.all(Radius.circular(30)),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(.5),
                       blurRadius: 10,
                       offset: Offset(0,2)
                     )
                   ]
                 ),
                 // decoration: BoxDecoration(
                 //   color: Colors.white,
                 //   border: Border.all(color: Color(0xFFBBABAB),width:1.3),
                 //   borderRadius: BorderRadius.all(Radius.circular(30)),
                 //   boxShadow: [
                 //     BoxShadow(
                 //       color: Colors.grey.withOpacity(.5),
                 //       blurRadius: 10,
                 //       offset: Offset(0,2)
                 //     )
                 //   ]
                 // ),

                child: Text("English",
                 style: TextStyle(
                     color: Color(0xFF79A31D),
                     fontSize: 18,
                     fontWeight: FontWeight.bold
                 ),
                 ),
             ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/40),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SliderScreen()),
                );

              },
              child: Container(
                alignment: Alignment.center,
                // color: Colors.red,
                height: MediaQuery.of(context).size.height/15,
                width: MediaQuery.of(context).size.width/3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xFFBBABAB),width:1.3),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.5),
                          blurRadius: 10,
                          offset: Offset(0,2)
                      )
                    ]
                ),



                child: Text("عـــربـــي",
                  style: TextStyle(
                      color: Color(0xFF79A31D),
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            )

          ],
        ) ,
      ),
    );
  }
}
