import 'package:store/Detail_Screens/page/Detail_Screens.dart';
import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  int num = 0;
  int num1 = 0;

  Widget build(BuildContext context) {
    var h =MediaQuery.of(context).size.height;
    var w =MediaQuery.of(context).size.width;


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
                      Text('Cart',style: TextStyle(color: Color(0xffFFFFFF),fontSize: 20,fontWeight: FontWeight.bold)),
                      SizedBox(width: 20,),
                      Spacer(),

                      Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Icon(Icons.shopping_cart_sharp,color: Color(0xffFFFFFF))),

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: h/5.25,
                  width: w/1.13,
                  decoration: BoxDecoration(
                    color:  Color(0xffffffff),
                    borderRadius: BorderRadius.circular(19.0),
                    boxShadow: [
                      BoxShadow(
                        color:  Color(0x805a5a5a),
                        offset: Offset(0, 1),
                        blurRadius: 4,
                      ),
                    ],

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: h/6.4,
                        width: h/7,
                        decoration: BoxDecoration(
                          color: const Color(0xffe5e5e5),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: w/18,),
                        child: Column(

                          children: [
                            Container(
                              child: Text(
                                'Walking men shoes \nbreathable sneakers',
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue',
                                  fontSize: 16,
                                  color: const Color(0xff373737),
                                  letterSpacing: 0.819642822265625,
                                ),
                                softWrap: false,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.only(right: w/4.8),
                              child: Text(
                                'Available: city',
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue LT Arabic',
                                  fontSize: 11,
                                  color: const Color(0xffa0a0a0),
                                  letterSpacing: 0.5635043983459472,
                                ),
                                softWrap: false,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              padding: EdgeInsets.only(right: w/3.1),

                              child: Text(
                                '29.9',
                                style: TextStyle(
                                  fontFamily: 'Helvetica Neue',
                                  fontSize: 14,
                                  color: const Color(0xff707070),
                                  letterSpacing: 0.7171874160766601,
                                  fontWeight: FontWeight.w700,
                                ),
                                softWrap: false,
                              ),
                            ),
                            SizedBox(height: 13,),

                            Container(

                              height: h/45,

                              width: h/5,
                              // color:Colors.blue ,

                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 5,),
                                    Container(
                                        child: SvgPicture.asset("assets/images/Group 89.svg")
                                    ),
                                    Spacer(),

                                    Container(
                                      height: h/31,
                                      width: h/9.5,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Color(0xff79a31d),width: 2),
                                        borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 2,),
                                          InkWell(
                                            onTap: (){
                                              setState(() {
                                                num--;
                                              });
                                            },
                                            child: Container(
                                              height: h/41,
                                              width: h/41,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff79a31d),
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                              ),
                                              child: SvgPicture.asset("assets/images/Size L.svg",),
                                            ),
                                          ),
                                          Spacer(),

                                          Text(
                                            '$num',
                                            style: TextStyle(
                                              fontFamily: 'SFProDisplay-Light',
                                              fontSize: 13,
                                              color: const Color(0xffa0a0a0),
                                              letterSpacing: 0.6659597434997558,
                                            ),
                                            softWrap: false,
                                          ),
                                          Spacer(),

                                          InkWell(
                                            onTap: (){
                                              setState(() {
                                                num++;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,

                                              height: h/41,
                                              width: h/41,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                  color: Color(0xff79a31d)
                                              ),
                                              child: SvgPicture.asset("assets/images/Size m.svg",),

                                            ),
                                          ),
                                          SizedBox(width: 2,),

                                        ],
                                      ),
                                    ),
                                    Spacer(),

                                    Container(
                                      child: SvgPicture.asset("assets/images/Path 73.svg"),
                                    )
                              ],
                            ),)
                          ],
                        ),
                      )
                    ],
                  )
                ),
                SizedBox(height: 10,),
                Container(
                    height: h/5.25,
                    width: w/1.13,
                    decoration: BoxDecoration(
                      color:  Color(0xffffffff),
                      borderRadius: BorderRadius.circular(19.0),
                      boxShadow: [
                        BoxShadow(
                          color:  Color(0x805a5a5a),
                          offset: Offset(0, 1),
                          blurRadius: 4,
                        ),
                      ],

                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: h/6.4,
                          width: h/7,
                          decoration: BoxDecoration(
                            color: const Color(0xffe5e5e5),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: w/18,),
                          child: Column(

                            children: [
                              Container(
                                child: Text(
                                  'Walking men shoes \nbreathable sneakers',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 16,
                                    color: const Color(0xff373737),
                                    letterSpacing: 0.819642822265625,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.only(right: w/4.8),
                                child: Text(
                                  'Available: city',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue LT Arabic',
                                    fontSize: 11,
                                    color: const Color(0xffa0a0a0),
                                    letterSpacing: 0.5635043983459472,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.only(right: w/3.1),

                                child: Text(
                                  '29.9',
                                  style: TextStyle(
                                    fontFamily: 'Helvetica Neue',
                                    fontSize: 14,
                                    color: const Color(0xff707070),
                                    letterSpacing: 0.7171874160766601,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  softWrap: false,
                                ),
                              ),
                              SizedBox(height: 13,),

                              Container(

                                width: h/5,
                                // color:Colors.blue ,

                                child: Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(width: 5,),
                                    Container(
                                        child: SvgPicture.asset("assets/images/Group 89.svg")
                                    ),
                                    Spacer(),

                                    Container(
                                      height: h/31,
                                      width: h/9.5,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(color: Color(0xff79a31d),width: 2),
                                          borderRadius: BorderRadius.all(Radius.circular(30))
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 2,),
                                          InkWell(
                                            onTap: (){
                                              setState(() {
                                                num1--;
                                              });
                                            },
                                            child: Container(
                                              height: h/41,
                                              width: h/41,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff79a31d),
                                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                              ),
                                              child: SvgPicture.asset("assets/images/Size L.svg",),
                                            ),
                                          ),
                                          Spacer(),

                                          Text(
                                            '$num1',
                                            style: TextStyle(
                                              fontFamily: 'SFProDisplay-Light',
                                              fontSize: 13,
                                              color: const Color(0xffa0a0a0),
                                              letterSpacing: 0.6659597434997558,
                                            ),
                                            softWrap: false,
                                          ),
                                          Spacer(),

                                          InkWell(
                                            onTap: (){
                                              setState(() {
                                                num1++;
                                              });
                                            },
                                            child: Container(
                                              alignment: Alignment.center,

                                              height: h/41,
                                              width: h/41,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                                  color: Color(0xff79a31d)
                                              ),
                                              child: SvgPicture.asset("assets/images/Size m.svg",),

                                            ),
                                          ),
                                          SizedBox(width: 2,),

                                        ],
                                      ),
                                    ),
                                    Spacer(),

                                    Container(
                                      child: SvgPicture.asset("assets/images/Path 73.svg"),
                                    )
                                  ],
                                ),)
                            ],
                          ),
                        )
                      ],
                    )
                ),
                SizedBox(height: 10,),

                Container(
                  width: w/1.13,
                  height: h/11,
                  decoration: BoxDecoration(
                    color: const Color(0xff79a31d),
                    borderRadius: BorderRadius.circular(13.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.string(
                        '<svg viewBox="62.5 477.5 39.0 39.0" ><path transform="translate(-205.52, 87.59)" d="M 301.2669677734375 428.9342041015625 L 273.7771911621094 428.9342041015625 C 273.5133056640625 428.8742370605469 273.2433471679688 428.8331909179688 272.9862365722656 428.7517700195312 C 271.4459838867188 428.2643432617188 270.4402465820312 426.8567504882812 270.4395751953125 425.1886291503906 C 270.4375610351562 420.5174560546875 270.44091796875 415.8462829589844 270.4368896484375 411.1751403808594 C 270.4361877441406 410.5288696289062 270.4476623535156 409.8880310058594 270.7121887207031 409.2727355957031 C 270.6375122070312 409.2471618652344 270.5748901367188 409.2276611328125 270.5136108398438 409.2054443359375 C 269.2588195800781 408.7469787597656 268.4416198730469 407.8853149414062 268.0996398925781 406.5867614746094 C 268.0578918457031 406.4285888671875 268.0329895019531 406.2656555175781 268 406.1054382324219 L 268 400.48779296875 C 268.0127868652344 400.4373168945312 268.0316467285156 400.3874816894531 268.0383605957031 400.335693359375 C 268.2470397949219 398.7893981933594 269.5139465332031 397.4706420898438 271.0609130859375 397.2679748535156 C 271.7010803222656 397.183837890625 272.3574523925781 397.2235412597656 273.0070495605469 397.2074279785156 C 273.0831298828125 397.2060546875 273.1591796875 397.2074279785156 273.24267578125 397.2074279785156 C 273.04541015625 396.81494140625 272.8434753417969 396.456787109375 272.681884765625 396.0818786621094 C 272.2524108886719 395.0802001953125 272.0639343261719 394.0421142578125 272.413330078125 392.981201171875 C 272.9202270507812 391.4423522949219 274.0552062988281 390.5550842285156 275.55908203125 390.0912475585938 C 275.8721008300781 389.9950256347656 276.2033081054688 389.9559631347656 276.5257568359375 389.8900146484375 L 277.561767578125 389.8900146484375 C 277.5927429199219 389.9007568359375 277.623046875 389.9175720214844 277.6539916992188 389.9209594726562 C 278.7525939941406 390.0192565917969 279.78125 390.3612060546875 280.7674560546875 390.8337707519531 C 283.0845031738281 391.9445190429688 285.0219116210938 393.544677734375 286.6934204101562 395.4800415039062 C 286.9781188964844 395.8099060058594 287.2433776855469 396.1566162109375 287.5267639160156 396.5066223144531 C 287.5651550292969 396.4588623046875 287.5988159179688 396.4204711914062 287.6297912597656 396.37939453125 C 289.0360107421875 394.5160522460938 290.7203063964844 392.9529113769531 292.6934204101562 391.7048645019531 C 293.8660888671875 390.9637145996094 295.1047058105469 390.3672485351562 296.46923828125 390.0670776367188 C 296.8038330078125 389.99365234375 297.1444702148438 389.9485473632812 297.4823608398438 389.8900146484375 L 298.4786987304688 389.8900146484375 C 298.5217590332031 389.902099609375 298.5648498535156 389.9209594726562 298.6092834472656 389.9256896972656 C 299.5288391113281 390.0152282714844 300.3622436523438 390.3302612304688 301.1000366210938 390.886962890625 C 302.3063659667969 391.7977600097656 302.9196166992188 392.9886474609375 302.777587890625 394.5200805664062 C 302.6961059570312 395.39453125 302.366943359375 396.1882629394531 301.9320983886719 396.9421997070312 C 301.8836059570312 397.0249938964844 301.8357849121094 397.1077575683594 301.7732238769531 397.2168579101562 C 302.3554992675781 397.2168579101562 302.8987426757812 397.2107849121094 303.4419860839844 397.2182006835938 C 305.0428161621094 397.2390747070312 306.4389953613281 398.2986450195312 306.8899841308594 399.8341674804688 C 306.95263671875 400.0488891601562 306.9930114746094 400.2696838378906 307.0441589355469 400.48779296875 L 307.0441589355469 406.1054382324219 C 307.0313720703125 406.1552734375 307.0152282714844 406.2043762207031 307.0071411132812 406.2555847167969 C 306.8529968261719 407.2794494628906 306.3581848144531 408.1040649414062 305.5126953125 408.6951904296875 C 305.1599426269531 408.9422302246094 304.7533569335938 409.1118774414062 304.3561706542969 409.3245849609375 C 304.59716796875 409.8907165527344 304.6119689941406 410.5248413085938 304.611328125 411.1650390625 C 304.6065673828125 414.7772827148438 304.6085815429688 418.3895874023438 304.6085815429688 422.0018310546875 C 304.6085815429688 423.09033203125 304.6153564453125 424.1795349121094 304.6072998046875 425.2680969238281 C 304.5951538085938 426.8783264160156 303.58203125 428.263671875 302.0586242675781 428.7524108886719 C 301.8021545410156 428.8345336914062 301.5315246582031 428.8749389648438 301.2669677734375 428.9342041015625 Z M 288.8812255859375 426.2388000488281 C 288.9599609375 426.2421569824219 289.0185546875 426.2468566894531 289.0777893066406 426.2468566894531 C 292.8361206054688 426.2474975585938 296.5937805175781 426.2482299804688 300.3521423339844 426.2468566894531 C 301.1760864257812 426.2461853027344 301.662109375 425.7588195800781 301.6628112792969 424.929443359375 C 301.6641235351562 420.1822509765625 301.6641235351562 415.434326171875 301.6628112792969 410.6870727539062 C 301.6628112792969 409.9014892578125 301.1659851074219 409.412109375 300.3777160644531 409.412109375 C 296.6193542480469 409.412109375 292.8610534667969 409.412109375 289.1026916503906 409.412109375 L 288.8812255859375 409.412109375 L 288.8812255859375 426.2388000488281 Z M 286.1629028320312 409.412109375 L 285.9205932617188 409.412109375 C 282.1770629882812 409.412109375 278.432861328125 409.412109375 274.6886596679688 409.412109375 C 273.8754577636719 409.412109375 273.3840637207031 409.8981018066406 273.3840637207031 410.7086486816406 C 273.3833618164062 415.4544982910156 273.3874206542969 420.2010803222656 273.3793334960938 424.9476318359375 C 273.3780212402344 425.6537780761719 273.8747863769531 426.2482299804688 274.6718139648438 426.2448425292969 C 278.4288330078125 426.2293701171875 282.1864929199219 426.2381286621094 285.9434814453125 426.2381286621094 C 286.0141906738281 426.2381286621094 286.0848388671875 426.2320556640625 286.1629028320312 426.2279968261719 L 286.1629028320312 409.412109375 Z M 288.8785095214844 406.7160339355469 L 289.1309814453125 406.7160339355469 C 293.759033203125 406.7160339355469 298.3871459960938 406.7160339355469 303.0152282714844 406.7160339355469 C 303.1080932617188 406.7160339355469 303.2010192871094 406.7146911621094 303.2938842773438 406.7065734863281 C 303.8788757324219 406.6588134765625 304.3406982421875 406.1915893554688 304.3440856933594 405.6052856445312 C 304.3534851074219 404.1047668457031 304.3514709472656 402.6042785644531 304.3447265625 401.1037292480469 C 304.3427124023438 400.6116333007812 304.0390930175781 400.2070922851562 303.5685729980469 400.0589599609375 C 303.4009399414062 400.0064697265625 303.2164916992188 399.9862670898438 303.0401306152344 399.9862670898438 C 298.391845703125 399.9822387695312 293.7442321777344 399.9828796386719 289.0959777832031 399.9828796386719 L 288.8785095214844 399.9828796386719 L 288.8785095214844 406.7160339355469 Z M 286.1615905761719 406.7254028320312 L 286.1615905761719 399.9923706054688 L 285.9179077148438 399.9923706054688 C 281.2770385742188 399.9923706054688 276.635498046875 399.9923706054688 271.9939575195312 399.9930114746094 C 271.8882446289062 399.9930114746094 271.7812194824219 399.9956970214844 271.6762084960938 400.0098571777344 C 271.1363220214844 400.0839233398438 270.7054748535156 400.5356140136719 270.7021179199219 401.0774841308594 C 270.6920166015625 402.5981750488281 270.6954040527344 404.1182250976562 270.7007751464844 405.638916015625 C 270.7021179199219 406.0368041992188 270.9087829589844 406.3282775878906 271.2359619140625 406.5396423339844 C 271.4809875488281 406.6978454589844 271.7562866210938 406.7254028320312 272.0383605957031 406.7254028320312 C 276.6731872558594 406.7254028320312 281.3079833984375 406.7254028320312 285.942138671875 406.7254028320312 L 286.1615905761719 406.7254028320312 Z M 290.0969543457031 397.1455078125 L 290.1366882324219 397.2107849121094 L 290.3695983886719 397.2107849121094 C 292.9391174316406 397.2107849121094 295.5093078613281 397.1986694335938 298.078125 397.2222290039062 C 298.5285034179688 397.2262573242188 298.8287048339844 397.1030883789062 299.0973510742188 396.7463073730469 C 299.5907897949219 396.0912475585938 300.0660400390625 395.4329528808594 300.2854614257812 394.6264343261719 C 300.4712829589844 393.9418029785156 300.30029296875 393.375 299.7422180175781 392.9219970703125 C 299.1511840820312 392.4413146972656 298.4732971191406 392.2838134765625 297.7308044433594 392.3396911621094 C 297.0286865234375 392.3922119140625 296.3615417480469 392.5867309570312 295.7186279296875 392.8620910644531 C 294.1427612304688 393.5352172851562 292.7748718261719 394.5214233398438 291.5335083007812 395.6880187988281 C 291.0367431640625 396.1546020507812 290.5749206542969 396.6580810546875 290.0969543457031 397.1455078125 Z M 284.9451904296875 397.2154846191406 C 284.8913269042969 397.1441345214844 284.8637084960938 397.1017150878906 284.8307495117188 397.0633239746094 C 283.8236694335938 395.8974304199219 282.6900329589844 394.8701477050781 281.40966796875 394.0118408203125 C 280.2618713378906 393.2430725097656 279.0555725097656 392.5981750488281 277.66748046875 392.3800659179688 C 276.8845520019531 392.2568664550781 276.1319274902344 392.32421875 275.4607849121094 392.8028259277344 C 274.735107421875 393.3204650878906 274.5277709960938 393.9102172851562 274.7956848144531 394.759765625 C 275.0777893066406 395.6523742675781 275.6250610351562 396.382080078125 276.2356262207031 397.0727844238281 C 276.3325500488281 397.1831970214844 276.4348754882812 397.2188720703125 276.5789184570312 397.2188720703125 C 279.0077514648438 397.21484375 281.437255859375 397.2154846191406 283.8660583496094 397.2154846191406 L 284.9451904296875 397.2154846191406 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                        allowDrawingOutsideViewBox: true,
                      ),
                      Text(
                        '+ Add Gift Wrapping',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 18,
                          color: const Color(0xffffffff),
                          letterSpacing: 0.702,
                        ),
                        softWrap: false,
                      ),

                    ],
                  ),
                )





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
                              MaterialPageRoute(builder: (context) =>  DetailScreens()),
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
                                'CHECKOUT',
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
