import 'package:store/Product_Details1/page/Product_Details1.dart';
import 'package:store/Products_Details/page/Product_Details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/15,
                  color: Color(0xff79A31D),
                  padding: EdgeInsets.all(8),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search,color: Color(0xffFFFFFF),),
                      Text('Home',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20,fontWeight: FontWeight.bold)),
                      Icon(Icons.shopping_cart_sharp,color: Color(0xffFFFFFF))
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                   child:
                   SizedBox(
                     height: MediaQuery.of(context).size.height/5,
                     width: MediaQuery.of(context).size.width/1,
                     child: Carousel(
                       boxFit: BoxFit.none,
                       autoplay: true,
                       animationCurve: Curves.fastOutSlowIn,
                       animationDuration: Duration(milliseconds: 500),
                       dotSize: 6.0,
                       dotIncreasedColor: Color(0xFF595959),
                       dotBgColor: Colors.transparent,
                       dotPosition: DotPosition.bottomRight,
                       dotVerticalPadding: 20,
                       dotHorizontalPadding: 20,
                       showIndicator: true,
                       indicatorBgPadding: 7.0,
                       borderRadius: true,
                       images: [
                         ExactAssetImage("assets/images/slide.png"),
                         ExactAssetImage("assets/images/slide.png"),
                         ExactAssetImage("assets/images/slide.png"),

                       ],
                     ),
                   )

                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(right: 10,left: 10),


                  child: Row(
                    children: [
                      Text('New products',style: TextStyle( fontSize: 18),),
                      Spacer(),

                      InkWell(
                        onTap: (){
                          pushNewScreen(
                            context,
                            screen: ProductDetails(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Row(children: [Container(
                            padding: EdgeInsets.only(right: 1),
                            child: Text('See All',style: TextStyle(fontWeight: FontWeight.w300),)),
                          Icon(Icons.arrow_forward_ios,size: 15,color:Color(0xffDDDDDD),)],),
                      )





                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2.67,
                  padding: EdgeInsets.all(8),

                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: false,
                    itemCount: 3,
                    itemBuilder: (ctx , index){
                      return Container(
                          margin: EdgeInsets.all(3),

                          height: MediaQuery.of(context).size.height/1,
                          width: MediaQuery.of(context).size.width/2.5,


                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                          child: Column(
                            children: [
                              Container(
                         padding: EdgeInsets.only(right: 10,top: 10),


                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(child: Image.asset("assets/images/Path 92.png",height:  h/60,))
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 0,top: 0),

                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Image.asset('assets/images/v.png',height: h/8),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child:Column(
                                children: [
                                  Container(child: Text("Name",style: TextStyle(color: Color(0xff606060),fontSize: h/60),),),
                                  SizedBox(height: h/100,),
                                  Container(child: Text("Name of the perfumese",style: TextStyle(color: Color(0xff8F8C8C),fontSize: h/90),),),
                                  Container(child: Text("Bdhfk jfodlk lldld..",style: TextStyle(color: Color(0xff8F8C8C),fontSize: h/90),),),
                                  SizedBox(height: h/60,),
                                  Container(child: Text("Available in Gaza City , West Bank",style: TextStyle(color: Color(0xff79A31D),fontSize: h/90),),),
                                  SizedBox(height: h/120,),
                                  Container(child: Text("193.6 NIS",style: TextStyle(color: Color(0xff606060),fontSize: h/90,fontWeight: FontWeight.bold),),),
                                  SizedBox(height: h/70),
                                  InkWell(

                                    onTap: (){
                                      pushNewScreen(
                                        context,
                                        screen: ProductDetails1(),
                                        withNavBar: false, // OPTIONAL VALUE. True by default.
                                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                      );
                                    },


                                    child: Container(
                                      alignment: Alignment.center,
                                      height: MediaQuery.of(context).size.height/45,
                                      width: MediaQuery.of(context).size.width/1,

                                      decoration: BoxDecoration(

                                          color: Color(0xff79A316),
                                          borderRadius: BorderRadius.all(Radius.circular(5)),

                                      ),
                                      child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize:h/100,fontWeight: FontWeight.bold),),),
                                  ),








                                ],
                              ),
                              ),

                            ],
                          ),
                        )
                      );
                    }
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 10,left: 10),


                  child: Row(
                    children: [
                      Text('New products',style: TextStyle( fontSize: 18),),
                      Spacer(),

                      InkWell(
                        onTap: (){
                          pushNewScreen(
                            context,
                            screen: ProductDetails(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Row(children: [Container(
                            padding: EdgeInsets.only(right: 1),
                            child: Text('See All',style: TextStyle(fontWeight: FontWeight.w300),)),
                          Icon(Icons.arrow_forward_ios,size: 15,color:Color(0xffDDDDDD),)],),
                      )





                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2.67,
                  padding: EdgeInsets.all(8),

                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      itemCount: 3,
                      itemBuilder: (ctx , index){
                        return Container(
                            margin: EdgeInsets.all(3),

                            height: MediaQuery.of(context).size.height/1,
                            width: MediaQuery.of(context).size.width/2.5,


                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(right: 10,top: 10),


                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(child: Image.asset("assets/images/Path 92.png",height:  h/60,))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 0,top: 0),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Image.asset('assets/images/v.png',height: h/8),
                                        )
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child:Column(
                                      children: [
                                        Container(child: Text("Name",style: TextStyle(color: Color(0xff606060),fontSize: h/60),),),
                                        SizedBox(height: h/100,),
                                        Container(child: Text("Name of the perfumese",style: TextStyle(color: Color(0xff8F8C8C),fontSize: h/90),),),
                                        Container(child: Text("Bdhfk jfodlk lldld..",style: TextStyle(color: Color(0xff8F8C8C),fontSize: h/90),),),
                                        SizedBox(height: h/60,),
                                        Container(child: Text("Available in Gaza City , West Bank",style: TextStyle(color: Color(0xff79A31D),fontSize: h/90),),),
                                        SizedBox(height: h/120,),
                                        Container(child: Text("193.6 NIS",style: TextStyle(color: Color(0xff606060),fontSize: h/90,fontWeight: FontWeight.bold),),),
                                        SizedBox(height: h/70),
                                        InkWell(

                                          onTap: (){
                                            pushNewScreen(
                                              context,
                                              screen: ProductDetails1(),
                                              withNavBar: false, // OPTIONAL VALUE. True by default.
                                              pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                            );
                                          },


                                          child: Container(
                                            alignment: Alignment.center,
                                            height: MediaQuery.of(context).size.height/45,
                                            width: MediaQuery.of(context).size.width/1,

                                            decoration: BoxDecoration(

                                              color: Color(0xff79A316),
                                              borderRadius: BorderRadius.all(Radius.circular(5)),

                                            ),
                                            child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize:h/100,fontWeight: FontWeight.bold),),),
                                        ),








                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            )
                        );
                      }
                  ),
                ),
              ],
            ),

          
        ),
      ),
    );
  }
}



