import 'package:store/Nav_Bar/pages/Nav_Bar.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThankyouPage extends StatefulWidget {
  @override
  _ThankyouPageState createState() => _ThankyouPageState();
}

class _ThankyouPageState extends State<ThankyouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'THANK YOU',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 32,
                  color: const Color(0xff7e7e7e),
                  letterSpacing: 1.6392852783203125,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              SizedBox(height: 20,),
              Text(
                'Your order has been placed successfully',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 14,
                  color: const Color(0xff79a31d),
                  letterSpacing: 0.7171874694824218,
                  height: 1.3571428571428572,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              SizedBox(height: MediaQuery.of(context).size.height/13,),

              Image.asset("assets/images/Group 452.png"),
              SizedBox(height: MediaQuery.of(context).size.height/11,),

              Text(
                'We’ll process your order soon',
                style: TextStyle(
                  fontFamily: 'Helvetica Neue',
                  fontSize: 12,
                  color: const Color(0xff727272),
                  letterSpacing: 0.6147321166992188,
                  height: 1.5833333333333333,
                ),
                textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
              SizedBox(height: 15,),

              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavBar()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height/20,
                  width: MediaQuery.of(context).size.width/1.35,
                  decoration: BoxDecoration(
                    color: const Color(0xff79a31d),
                    borderRadius: BorderRadius.circular(29.5),
                  ),
                  child: Text(
                    'Continue Shopping',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 16,
                      color: const Color(0xffffffff),
                      letterSpacing: 0.6557147216796875,
                      fontWeight: FontWeight.w700,
                    ),
                    softWrap: false,
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
