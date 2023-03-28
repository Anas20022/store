
import 'package:store/Home_Screen/pages/Home_Screen.dart';
import 'package:store/Nav_Bar/pages/Nav_Bar.dart';
import 'package:store/Product_Details1/page/Product_Details1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SingleChildScrollView(
        child: SafeArea(
          
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/15,
                  color: Color(0xff79A31D),
                  padding: EdgeInsets.all(8),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // InkWell(
                      //     onTap: (){
                      //       Navigator.push(
                      //         context,
                      //         MaterialPageRoute(builder: (context) =>  NavBar()),
                      //       );
                      //     },
                      //     child: Icon(Icons.arrow_back_ios,color: Color(0xffFFFFFF),)),
                      Container(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios,color: Color(0xffFFFFFF),),
                            onPressed: ()=> Navigator.of(context).pop(),
                          )

                      ),

                      Spacer(),
                      Text('Products',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20,fontWeight: FontWeight.bold)),
                      SizedBox(width: 13,),

                      Spacer(),
                      Icon(Icons.shopping_cart_sharp,color: Color(0xffFFFFFF)),
                      SizedBox(width: 10,),

                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/1,
                  width: MediaQuery.of(context).size.width/1,
                  padding: EdgeInsets.all(8),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: .1,mainAxisSpacing: .1, mainAxisExtent:MediaQuery.of(context).size.height/2.67),
                      itemCount: 10,
                      itemBuilder: (ctx , index){
                        return Container(


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
                                        Container(child: Image.asset("assets/images/Path 92.png"))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(right: 0,top: 0),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Image.asset('assets/images/watch-png-hd-download-png-image-watch-png-hd-1000.png'),
                                        )
                                      ],
                                    ),
                                  ),

                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child:Column(
                                      children: [
                                        Container(child: Text("Name",style: TextStyle(color: Color(0xff606060),fontSize: 13),),),
                                        SizedBox(height: 7,),
                                        Container(child: Text("Name of the perfumese",style: TextStyle(color: Color(0xff8F8C8C),fontSize: 9),),),
                                        Container(child: Text("Bdhfk jfodlk lldld..",style: TextStyle(color: Color(0xff8F8C8C),fontSize: 9),),),
                                        SizedBox(height: 15,),
                                        Container(child: Text("Available in Gaza City , West Bank",style: TextStyle(color: Color(0xff79A31D),fontSize: 8),),),
                                        SizedBox(height: 5,),
                                        Container(child: Text("193.6 NIS",style: TextStyle(color: Color(0xff606060),fontSize: 9,fontWeight: FontWeight.bold),),),
                                        SizedBox(height: 12,),
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
                                            height: 20,
                                            width: MediaQuery.of(context).size.width/1,
                                            decoration: BoxDecoration(

                                              color: Color(0xff79A316),
                                              borderRadius: BorderRadius.all(Radius.circular(5)),

                                            ),
                                            child: Text("Add To Cart",style: TextStyle(color: Colors.white,fontSize: 9,fontWeight: FontWeight.bold),),),
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
