


import 'package:store/Cart_Screen/page/Cart_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class ProductDetails1 extends StatefulWidget {
  @override
  _ProductDetails1State createState() => _ProductDetails1State();
}

class _ProductDetails1State extends State<ProductDetails1> {

  final List<String> imageList = [
    "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
    "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
    // "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
    // "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
    // "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
  ];
  int dot = 1;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/15,
                  color: Color(0xff79A31D),
                  padding: EdgeInsets.all(8),

                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          // alignment: Alignment.centerLeft,
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios,color: Color(0xffFFFFFF),),
                            onPressed: ()=> Navigator.of(context).pop(),
                          )

                      ),
                      Spacer(),
                      Text('Product details',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20,fontWeight: FontWeight.bold)),
                      SizedBox(width: 15,),
                      Spacer(),

                      Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.shopping_cart_sharp,color: Color(0xffFFFFFF))),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  child: GFCarousel(
                    height: MediaQuery.of(context).size.height/2.8,
                      enableInfiniteScroll:false,
                    initialPage: 1,
                    hasPagination: false,
                    activeIndicator:Colors.green,
                    items: imageList.map(
                          (url) {
                        return Container(
                          margin: EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Image.network(
                                url,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width/1.2
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onPageChanged: (index) {
                      setState(() {
                        dot =  index;
                      });
                    },
                  ),

                ),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width/1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height:13 ,
                              width: 13,
                              decoration: BoxDecoration(
                                  color : (dot == 0)?Color(0xff79A31D) :(dot == 1)?Colors.white:Colors.white,
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                border: Border.all(color: Color(0xff4D4D4D),width:.2),                          ),


                            ),
                            SizedBox(width: 5,),
                            Container(
                              height:13 ,
                              width: 13,
                              decoration: BoxDecoration(
                                color : (dot == 0)?Colors.white :(dot == 1)?Color(0xff79A31D):Colors.white,
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                border: Border.all(color: Color(0xff4D4D4D),width:.2),
                              ),

                            ),
                            SizedBox(width: 5,),
                            Container(
                              height: 13,
                              width: 13,
                              decoration: BoxDecoration(
                                color: (dot == 0)?Colors.white:(dot==1)?Colors.white:Color(0xff79A31D),
                                borderRadius: BorderRadius.all( Radius.circular(30)),
                                border: Border.all(color: Color(0xff4D4D4D),width:.2),
                              ),
                            )

                          ],
                        ),
                      ),



                    ],
                  ),
                ),
                SizedBox(height: 15,),

                Container(
                  width: MediaQuery.of(context).size.width/1,
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/13),
                  child: Row(
                    children: [
                      Column(

                        children: [
                          Text('Walking men shoes breathale',style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400
                          ),),


                          Container(
                            padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/3.7),
                            child: Text('sneakers shoes',style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400
                            ),),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(right: 20,bottom: 10),
                        child: Image.asset("assets/images/Path 57.png",),
                      )

                    ],
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  width: MediaQuery.of(context).size.width/1,
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/13),
                  child: Row(
                    children: [
                      Text('Available in :',style: TextStyle(color: Color(0xff79A31D)),),
                      Text(" Gaza City , West Bank , Khanyouns"),
                    ],
                  ),

                ),
                SizedBox(height: 45,),
                Container(
                  width: MediaQuery.of(context).size.width/1,
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/15),
                  child: Column(
                    children: [
                      Text("Name of the perfumesej In the ategories pagories",style: TextStyle(color: Color(0xff8F8C8C)),),
                      Text("Name of the perfumesej In the ategories pagories",style: TextStyle(color: Color(0xff8F8C8C)),),
                      Text("Name of the perfumesej In the ategories pagories",style: TextStyle(color: Color(0xff8F8C8C)),),
                      Text("Name of the perfumesej In the ategories pagories",style: TextStyle(color: Color(0xff8F8C8C)),),
                      Text("Name of the perfumesej In the ategories pagories",style: TextStyle(color: Color(0xff8F8C8C)),),
                    ],
                  ),

                ),




              ],
            ),
            Positioned(
                  bottom: MediaQuery.of(context).size.height/40,
                child: Stack(
                  children: [
                    Container(
                        height: .5,
                        width: MediaQuery.of(context).size.width/1,
                        color: Colors.black.withOpacity(.2),
                      ),
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(

                        children: [
                          SizedBox(width: 40,),

                          Text(
                            '193.6 NIS',
                            style: TextStyle(
                              fontFamily: 'Helvetica Neue',
                              fontSize: 20,
                              color: const Color(0xff595959),
                              letterSpacing: 0.8196434020996093,
                              fontWeight: FontWeight.w700,
                            ),
                            softWrap: false,
                          ),
                          SizedBox(width: 40,),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  CartScreen()),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height/23,
                              width: MediaQuery.of(context).size.width/2.1,
                              decoration: BoxDecoration(
                                color: const Color(0xff79a31d),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Text(
                                'Add To Cart',
                                style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 18,
                                  color: const Color(0xffffffff),
                                  letterSpacing: 0.7376790618896484,
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                              )
                            ),
                          ),


                        ],
                      ),
                    )
                  ],
                ),),

          ],
        ),
      ),
    );
  }
}
