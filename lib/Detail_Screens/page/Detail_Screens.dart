import 'package:store/Thankyou_page/page/Thankyou_page.dart';
import 'package:flutter/material.dart';






class DetailScreens extends StatefulWidget {
  @override
  _DetailScreensState createState() => _DetailScreensState();
}

class _DetailScreensState extends State<DetailScreens> {
  @override
  Widget build(BuildContext context) {
    var h =MediaQuery.of(context).size.height;
    var w =MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                    Text('Details',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20,fontWeight: FontWeight.bold)),
                    SizedBox(width: 20,),
                    Spacer(),

                    Container(
                        padding: EdgeInsets.only(right: 10),
                        child: Icon(Icons.shopping_cart_sharp,color: Color(0xffFFFFFF))),


                  ],
                ),
              ),
              SizedBox(height: 30,),
              Container(
                height: h/15,
                width: w/1.13,
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,

                  style: TextStyle(
                    color: Colors.black,
                      fontSize:20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                    hintText: "Full name..",
                    hintStyle:  TextStyle(
                        fontFamily: 'SFProDisplay-Thin',
                        fontSize: 14,
                        color: const Color(0xff8f8c8c),
                        letterSpacing: 0.5737503814697266,
                      ),




                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(height: 13,),

              Container(
                height: h/15,
                width: w/1.13,
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,

                  style: TextStyle(
                      color: Colors.black,
                      fontSize:20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone number",
                    hintStyle:  TextStyle(
                      fontFamily: 'SFProDisplay-Thin',
                      fontSize: 14,
                      color: const Color(0xff8f8c8c),
                      letterSpacing: 0.5737503814697266,
                    ),




                  ),
                  keyboardType: TextInputType.phone,
                ),
              ),
              SizedBox(height: 13,),

              Container(
                height: h/15,
                width: w/1.13,
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,

                  style: TextStyle(
                      color: Colors.black,
                      fontSize:20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "City",
                    hintStyle:  TextStyle(
                      fontFamily: 'SFProDisplay-Thin',
                      fontSize: 14,
                      color: const Color(0xff8f8c8c),
                      letterSpacing: 0.5737503814697266,
                    ),




                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(height: 13,),

              Container(
                alignment: Alignment.centerLeft,
                height: h/3.7,
                width: w/1.13,
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.grey.withOpacity(.5)),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  textInputAction: TextInputAction.done,

                  style: TextStyle(
                      color: Colors.black,
                      fontSize:20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Note",
                    hintStyle:  TextStyle(
                      fontFamily: 'SFProDisplay-Thin',
                      fontSize: 14,
                      color: const Color(0xff8f8c8c),
                      letterSpacing: 0.5737503814697266,
                    ),




                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: h/15,
                width: w/1.13,
                child: Row(
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Thin',
                        fontSize: 14,
                        color: const Color(0xff8f8c8c),
                        letterSpacing: 0.5737503814697266,
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 8,),
                    Container(
                      alignment: Alignment.center,
                      height: h/33,
                      width: w/3.15,
                      decoration: BoxDecoration(
                        color: const Color(0xff79a31d),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Text(
                        'Choose location',
                        style: TextStyle(
                          fontFamily: 'Cairo',
                          fontSize: 11,
                          color: const Color(0xffffffff),
                          letterSpacing: 0.45080387115478515,
                          fontWeight: FontWeight.w700,
                        ),
                        softWrap: false,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 18,),
              Container(
                height: h/20,
                width: w/1.13,
                child: Row(
                  children: [
                    Text(
                      'Delivery price ',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Thin',
                        fontSize: 14,
                        color: const Color(0xff8f8c8c),
                        letterSpacing: 0.5737503814697266,
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      '2 NIS',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Thin',
                        fontSize: 13,
                        color: const Color(0xff79a31d),
                        letterSpacing: 0.5327682113647461,
                      ),
                      softWrap: false,
                    )
                  ],
                ),

              ),
              Container(
                height: h/20,
                width: w/1.13,
                child: Row(
                  children: [
                    Text(
                      'Total price ',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Thin',
                        fontSize: 14,
                        color: const Color(0xff8f8c8c),
                        letterSpacing: 0.5737503814697266,
                      ),
                      softWrap: false,
                    ),
                    SizedBox(width: 5,),
                    Text(
                      '193.6 NIS',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Thin',
                        fontSize: 13,
                        color: const Color(0xff79a31d),
                        letterSpacing: 0.5327682113647461,
                      ),
                      softWrap: false,
                    )
                  ],
                ),

              ),
              SizedBox(height: 18,),
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ThankyouPage()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: h/15,
                  width: w/1.13,
                      decoration: BoxDecoration(
                        color: const Color(0xff79a31d),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                  child: Text(
                    'Order',
                    style: TextStyle(
                      fontFamily: 'Cairo',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                      letterSpacing: 1.0245535278320312,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                    ),
              ),












            ],
          ),
        ),
      ),
    );
  }
}
