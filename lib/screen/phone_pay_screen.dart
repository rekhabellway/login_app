import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/screen/food_screen.dart';
import 'package:login_app/screen/gift_screen.dart';
import 'package:login_app/screen/qr_screen.dart';
import 'package:login_app/screen/rewards_screen.dart';
import 'caraousel_screen.dart';


class PhonePayScreen extends StatefulWidget {
   const PhonePayScreen({Key? key}) : super(key: key);

  @override
  State<PhonePayScreen> createState() => _PhonePayScreenState();
}
class _PhonePayScreenState extends State<PhonePayScreen> {



  String dropdownValue = 'Add Address';

@override
  Widget build(BuildContext context) {

      return MaterialApp(
        home: Scaffold(
        backgroundColor: Color(0xfff3ebf6),
        appBar: AppBar(
          actions: [
            Container(
              padding: EdgeInsets.only(left: 30),
              width: 300,
              child: DropdownButton(
                hint: dropdownValue == null
                    ? Text('Dropdown')
                    : Text(
                  dropdownValue,
                  style: TextStyle(color: Colors.white),
                ),
                isExpanded: true,
                // iconSize: 30.0,
                style: TextStyle(color: Colors.black),
                items: ['Indore', 'Bhopal', 'Ujjain'].map(
                      (val) {
                    return DropdownMenuItem<String>(
                      value: val,
                      child: Text(val),
                    );
                  },
                ).toList(),
                onChanged: (val) {
                  setState(
                        () {
                      dropdownValue = val!;
                    },
                  );
                },
              ),
            ),
            SizedBox(width: 5,),
            InkWell(onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  QrCode()),
            ),child: Icon(Icons.qr_code)),
            SizedBox(width: 10,),
            Icon(Icons.notification_add),
            SizedBox(width: 10,),
            Icon(Icons.help),
            SizedBox(width: 10,),
          ],
          backgroundColor: Color(0xffcf26ea),
          title: Icon(Icons.person),
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ), //AppBar
        body:
        ListView(
            padding:   EdgeInsets.only(top: 10),
            children:[ Container(

              child: Column(
                children: <Widget>[
                  BannerCarousel(
                    banners: BannerImages.listBanners,
                  ),

                  Container(
                    padding:   EdgeInsets.only(top: 10,),
                    height: 170,
                    width: 400,
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                        bottom: Radius.circular(30),
                      ),
                      color: Colors.white,

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Transfer Money",),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffcf26ea),
                                  shape: CircleBorder()
                              ),
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),

                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffcf26ea),
                                  shape: CircleBorder()
                              ),
                              child: Icon(
                                Icons.home,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffcf26ea),
                                  shape: CircleBorder()
                              ),
                              child: Icon(
                                Icons.account_balance,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffcf26ea),
                                  shape: CircleBorder()
                              ),
                              child: Icon(
                                Icons.account_box,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children:  [
                                  Text("To Mobile\nNumber",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("To Bank/\nUPI ID",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("To Self\nAccount",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("Check\nBalence",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),

                            ],
                          ),
                        ),
                        Spacer(),

                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration:
                          const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(20),
                            ),

                            color: Color(0xdadad5d5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  Text("My UPI ID : 1234567890@ybl",),
                                  Icon(Icons.chevron_right,size: 40, color: Colors.grey,)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    width:400,
                    padding: EdgeInsets.only(top:15, bottom:10,),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding:EdgeInsets.only(top:10),
                              height:70,
                              width:100,
                              decoration:  BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              child: Column(
                                children: [
                                  Icon(Icons.card_giftcard, color: Colors.white),
                                  SizedBox(height: 5,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text("Wallet", style: TextStyle(color: Colors.white),),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) =>  RewardsScreen()),
                                // );
                              },
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  RewardsScreen()),
                                  );
                                },
                                child: Container(
                                  padding:EdgeInsets.only(top:10,),
                                  height:70,
                                  width:100,
                                  decoration:  const BoxDecoration(
                                    color: Colors.indigoAccent,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),

                                  child: Column(
                                    children: [
                                      const Icon(Icons.wallet_giftcard, color: Colors.white),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text("Rewards", style: TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),


                                ),
                              ),
                            ),
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>  FoodScreen()),
                                );
                              },
                              child: Container(
                                padding:EdgeInsets.only(top:10,),
                                height:70,
                                width:100,
                                decoration:  BoxDecoration(
                                  color: Colors.indigoAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),

                                child: Column(
                                  children: [
                                    const Icon(Icons.wallet_giftcard, color: Colors.white),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Refer & Get", style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),


                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                  ),
                  Container(
                    margin:EdgeInsets.all(20),
                    padding: const EdgeInsets.only(top: 10, left:10),
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white,

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Recharge & Pay Bills",),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.phone_android,size: 40, color: Color(0xffcf26ea)),
                            Icon(Icons.data_thresholding,size: 40, color: Color(0xffcf26ea)),
                            Icon(Icons.lightbulb_outline,size: 40, color: Color(0xffcf26ea)),
                            Icon(Icons.credit_card,size: 40, color: Color(0xffcf26ea))
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children:  [
                                Text("Mobile\nRecharge",
                                  style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                  textAlign: TextAlign.center,)
                              ],
                            ),
                            Column(
                              children:  [
                                Text("      DTH",
                                  style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                  textAlign: TextAlign.center,)
                              ],
                            ),
                            Column(
                              children:  [
                                Text("      Electricity",
                                  style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                  textAlign: TextAlign.center,)
                              ],
                            ),
                            Column(
                              children: [
                                Text("Credit card\nBill Payment",
                                  style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                  textAlign: TextAlign.center,)
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.home ,size: 40, color: Color(0xffcf26ea)),
                            Icon(Icons.payment,size: 40, color: Color(0xffcf26ea)),
                            Icon(Icons.cast_for_education_outlined,size: 40, color: Color(0xffcf26ea)),
                            TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffcf26ea),
                                  shape: CircleBorder()
                              ),
                              child: Icon(
                                Icons.chevron_right,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.only( left:10),
                          decoration:  BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children:  [
                                  Text("Rent\nPayment",style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("Loan\nRepayment",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("Education\nFees",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children: [
                                  TextButton(
                                    onPressed: () {
                                    }, child: Text("See All", style: TextStyle(color: Colors.purple.shade900),),)
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),

                  Container(
                    margin:EdgeInsets.all(20),
                    padding: const EdgeInsets.only(top: 10, left:20, bottom:10),
                    decoration:  const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white,

                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Insurance",),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.bike_scooter,size: 40, color: Color(0xffcf26ea),),
                            Icon(Icons.car_rental,size: 40, color: Color(0xffcf26ea),),
                            Icon(Icons.health_and_safety,size: 40,color: Color(0xffcf26ea),),
                            Icon(Icons.card_giftcard,size: 40, color: Color(0xffcf26ea),),
                          ],
                        ),
                        const SizedBox(height:5),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children:  [
                                  Text("Bike",style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("     Car",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("Health++",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("Accident",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height:5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.health_and_safety,size: 40,color: Color(0xffcf26ea),),
                            const Icon(Icons.card_travel,size: 40, color: Color(0xffcf26ea),),
                            const Icon(Icons.health_and_safety,size: 40, color: Color(0xffcf26ea),),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xffcf26ea),
                                shape: CircleBorder(),
                              ),
                              child: const Icon(
                                Icons.chevron_right,

                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),

                        Container(
                          padding:  const EdgeInsets.only( top: 10,right:10),
                          decoration:  const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children:  [
                                  Text("Term\nLife",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("International\nTravel",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children:  [
                                  Text("Insurance\nRenewal",
                                    style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                                    textAlign: TextAlign.center,)
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("See All", style: TextStyle(
                                    color:Color(0xffcf26ea),),
                                  )  ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

            ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                height: 200,
                width: 200,
                child: CaraouselScreen(),
              ),

              Container(
                margin:const EdgeInsets.all(20),
                padding: const EdgeInsets.only(top: 10, left:10),
                decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Travel Booking",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.flight,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.bus_alert,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.train,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.local_hotel,size: 40, color: Color(0xffcf26ea),),
                      ],
                    ),
                    const SizedBox(height:5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children:  [
                            Text("Flight ",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Bus",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Train",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Hotel",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height:5),],
                ),
              ),

              Container(
                margin:const EdgeInsets.all(20),
                padding: const EdgeInsets.only(top: 10, left:10),
                decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Switch",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.flight,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.bus_alert,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.train,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.local_hotel,size: 40, color: Color(0xffcf26ea),)
                      ],
                    ),
                    const SizedBox(height:5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children:  [
                            Text("Flight ",
                              style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Bus",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Train",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Hotel",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:5),],
                ),
              ),
              Container(
                margin:EdgeInsets.all(20),
                padding: EdgeInsets.only(top: 10, left:10),
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Subscriptions",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.flight,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.bus_alert,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.train,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.local_hotel,size: 40, color: Color(0xffcf26ea),)
                      ],
                    ),
                    const SizedBox(height:5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children:  [
                            Text("Flight ",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Bus",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Train",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Hotel",
                              style: Theme.of(context).textTheme.bodySmall?.merge(const TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height:5),],
                ),
              ),
              Container(
                margin:const EdgeInsets.all(20),
                padding: const EdgeInsets.only(top: 10, left:10),
                decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sponsored Games",),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.flight,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.bus_alert,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.train,size: 40, color: Color(0xffcf26ea),),
                        Icon(Icons.local_hotel,size: 40, color: Color(0xffcf26ea),)
                      ],
                    ),
                    SizedBox(height:5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children:  [
                            Text("Flight ",
                              style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Bus",
                              style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Train",
                              style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                        Column(
                          children:  [
                            Text("Hotel",
                              style: Theme.of(context).textTheme.bodySmall?.merge(TextStyle(color: Colors.black)),
                              textAlign: TextAlign.center,)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height:5),],
                ),
              ),
            ]
        ),

      ),
        debugShowCheckedModeBanner: false,
      );
    }
}
class BannerImages {
  static const String banner1 =
      "assets/images/img_7.png";
  static const String banner2 =
      "assets/images/img_7.png";
  static const String banner3 =
      "assets/images/img_7.png";

  static const String banner4 =
      "assets/images/img_7.png";

  static List<BannerModel> listBanners = [
    BannerModel(imagePath: banner1, id: "1"),
    BannerModel(imagePath: banner2, id: "2"),
    BannerModel(imagePath: banner3, id: "3"),
    BannerModel(imagePath: banner4, id: "4"),
  ];
}

