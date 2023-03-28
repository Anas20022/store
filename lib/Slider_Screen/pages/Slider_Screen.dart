import 'package:store/Languge_Screen/pages/Languge_Screen.dart';
import 'package:store/Nav_Bar/pages/Nav_Bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int dot = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          child: Stack(
            children: [
              PageView.builder(
                onPageChanged: (int index){
                  setState(() {
                    dot = index;
                  });
                },
                itemCount: 3,
                itemBuilder: (context,index){
                  return Container(
                    alignment: Alignment.center,

                    child: Column(

                      children: [
                        SizedBox(height: 100,),
                        Center(
                          child: Container(
                            child: Image.asset(
                                (index == 0)
                                    ?'assets/images/slide1.png'
                                    :(index == 1)
                                    ?'assets/images/slide2.png'
                                    :'assets/images/slide3.png',
                              height: MediaQuery.of(context).size.height/2,
                              width: MediaQuery.of(context).size.width/1,

                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Center(
                          child: Container(
                              child: Text(
                                  (index == 0)
                                      ?'BASSMAH'
                                      :(index == 1)
                                      ?'BASSMAH'
                                      :'BASSMAH',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold
                                ),

                              )),
                        ),
                        SizedBox(height: 10,),
                        Center(
                          child: Container(
                            width:MediaQuery.of(context).size.width/1.4,
                              child: Text(
                                (index == 0)
                                    ?'Shop the finest types of products Over the phone and home delivery'
                                    :(index == 1)
                                    ?'Providing the best products Even accessories, perfumes and clothing at amazing prices'
                                    :'Shop the finest types Products !',
                                style: TextStyle(
                                    fontSize: 18,
                                  fontWeight: FontWeight.w300
                                ),
                                textAlign: TextAlign.center,

                              )),
                        )


                      ],
                    ),

                  );

                },
              ),
              Positioned(
                  bottom: 20,
                  right: 0,
                  left: 0,
                  child: Container(
                    // padding: EdgeInsets.all(15),
                    // padding: EdgeInsets.only(right: 30),
                    child:   Row(
                      children: [
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(left: 50),

                          child: Row(
                            children: [
                              Container(
                                height:(dot ==0)?15:(dot == 1)?10:10 ,
                                width: (dot ==0)?15:(dot == 1)?10:10,
                                decoration: BoxDecoration(
                                  color : (dot == 0)?Colors.black :(dot == 1)?Color(0xFFF1F1F3):Color(0xFFF1F1F3),
                                  borderRadius: BorderRadius.all(Radius.circular(30))
                                ),


                              ),
                              SizedBox(width: 5,),

                              Container(
                                height:(dot ==0)?10:(dot == 1)?15:10 ,
                                width: (dot ==0)?10:(dot == 1)?15:10,
                                decoration: BoxDecoration(
                                    color : (dot == 0)?Color(0xFFF1F1F3) :(dot == 1)?Colors.black:Color(0xFFF1F1F3),
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                  // border: Border.all(color: Color(0xFFBBABAB),width:1.3),
                                ),

                              ),
                              SizedBox(width: 5,),

                              Container(
                                height: (dot == 0)?10:(dot==1)?10:15,
                                width: (dot == 0)?10:(dot==1)?10:15,
                                decoration: BoxDecoration(
                                  color: (dot == 0)?Color(0xFFF1F1F3):(dot==1)?Color(0xFFF1F1F3):Colors.black,
                                  borderRadius: BorderRadius.all( Radius.circular(30)),
                                ),
                              )

                            ],
                          ),
                        ),
                        Spacer(),
                      Container(
                            // padding: EdgeInsets.only(right: 30),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  NavBar()),
                                );
                              },
                              child: Text('Next',
                              style: TextStyle(
                                  color: Color(0xFF79A31D),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold                            ),
                              ),
                            ),
                          ),
                        SizedBox(width: 30,)


                      ],
                    ),
              ))

            ],
          ),
        ),
      ),
    );




    // return Scaffold(
    //   body: SafeArea(
    //     child: Stack(
    //       children: [
    //         PageView.builder(
    //           onPageChanged: (int index){
    //             setState(() {
    //               dot = index;
    //             });
    //           },
    //           itemCount: 3,
    //
    //           itemBuilder: (context, index){
    //             return Container(
    //               alignment: Alignment.center,
    //               child: Column(
    //                 children: [
    //                   Center(
    //                     child: Container(
    //                       child: Image.asset(
    //                           (index == 0)
    //                               ? "assets/images/slide1.png"
    //                               : (index == 1)
    //                               ? "assets/images/slide2.png"
    //                               : "assets/images/slide3.png",
    //                         height: MediaQuery.of(context).size.height/2,
    //                         width: MediaQuery.of(context).size.width/1.2,
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     height: 20,
    //                   ),
    //                   Center(
    //                     child: Container(
    //                       child:
    //                       Text(
    //                         (index == 0)
    //                             ? 'قميص أزرق '
    //                             :(index == 1)
    //                             ? 'أكسسوارات'
    //                             :'نظارات',
    //                         style: TextStyle(
    //                           fontSize: 30,
    //                           fontWeight: FontWeight.bold,
    //                           color: Color(0xFF79A31D)
    //                         ),
    //                       ),
    //                     ),
    //                   )
    //                 ],
    //               ),
    //
    //             );
    //           },
    //         )
    //       ],
    //     )
    //   ),
    // );
  }
}
