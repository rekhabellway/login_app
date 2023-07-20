import 'package:flutter/material.dart';
import 'package:login_app/screen/square_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page1(),
    const Page1(),
    const Page1(),
  ];
  String dropdownValue = 'Address';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xeaf8f4f4),
      appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            Container(
              padding: EdgeInsets.all(20),
              child: SizedBox(
                width: 80,
                child: DropdownButton(
                  hint: dropdownValue == null
                      ? Text('Dropdown')
                      : Text(
                    dropdownValue,
                    style: TextStyle(color: Colors.black),
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
            ),
            SizedBox(width: 180,),
            Container(
                height: 40,
                padding: EdgeInsets.only(right: 20),
                child: CircleAvatar(child: Icon(Icons.person, color: Colors.black,size: 20, )))
          ],
          title: Icon(Icons.telegram, color: Colors.orange,)

      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xa8e1d7d7),
        borderRadius:  BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home_filled,
              color: Colors.grey,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.black38,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.work_rounded,
              color: Colors.grey,
              size: 35,
            )
                : const Icon(
              Icons.work_outline_outlined,
              color: Colors.black38,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.widgets_rounded,
              color: Colors.grey,
              size: 35,
            )
                : const Icon(
              Icons.widgets_outlined,
              color: Colors.black38,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.grey,
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.black38,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child:  TextField(
              decoration:
              InputDecoration( border: InputBorder.none, hintText: 'Search',prefixIcon:Icon(Icons.mic,color: Colors.orange,), suffixIcon: Icon(Icons.search_off_outlined),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.circular(20),
              ),
              child:  ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  // size: Size.fromRadius(48), // Image radius
                  child: Image.asset('assets/images/img_8.png', fit: BoxFit.cover),
                ),
              )
          ),
          SizedBox(
            height: 350,
            width: 500,
            child: ListView.builder(
              physics:  ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) =>
                  Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 220,
                                  width: 170,
                                  decoration:   BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:  BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/img_10.png",),
                                      fit: BoxFit.cover,
                                      scale: 0.5,
                                    ),

                                  ),

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.favorite_border_outlined,color: Colors.white, size: 40,)
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text("50% off", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Row(
                                              children: [
                                                Text("UPto Rs.100", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                                VerticalDivider(
                                                  color: Colors.white,
                                                  thickness: 2,
                                                ),
                                                Text('World', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),),
                                              ],
                                            ),
                                          )

                                        ],
                                      ),
                                    ],
                                  ),



                                ),

                                const SizedBox(width: 40,),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  height: 220,
                                  width: 170,
                                  decoration:   BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:  BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage("assets/images/img_10.png",),
                                      fit: BoxFit.cover,
                                      scale: 0.5,
                                    ),

                                  ),

                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Icon(Icons.favorite_border_outlined,color: Colors.white, size: 40,)
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        children: [
                                          Text("50% off", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          IntrinsicHeight(
                                            child: Row(
                                              children: [
                                                Text("UPto Rs.100", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),),
                                                VerticalDivider(
                                                  color: Colors.white,
                                                  thickness: 2,
                                                ),
                                                Text('World', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),),
                                              ],
                                            ),
                                          ),

                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        margin: EdgeInsets.all(10),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Chappan Indo...", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, ),),
                                  Text.rich(
                                    TextSpan(
                                      children: <InlineSpan>[
                                        WidgetSpan(
                                            child: Icon(Icons.star_border_outlined,color: Colors.green,)),
                                        TextSpan(
                                          text: '4.3 .35 mins',style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                    ),
                                  ),
                                  Text("Snacks", style: TextStyle(color: Colors.black38),)
                                ]  ),
                            SizedBox(width: 80,),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Chappan Indo...", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold, ),),
                                  Text.rich(
                                    TextSpan(
                                      children: <InlineSpan>[
                                        WidgetSpan(
                                            child: Icon(Icons.star_border_outlined,color: Colors.green,)),
                                        TextSpan(
                                          text: '4.3 .35 mins',style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                    ),
                                  ),

                                  Text("Snacks", style: TextStyle(color: Colors.black38),)
                                ]  ),
                          ],
                        ),
                      ),
                    ],
                  ),

            ),
          ),
   Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Top picks in your city", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Text("SEE ALL", style: TextStyle(fontSize: 15, color: Colors.orange, fontWeight: FontWeight.bold))
      ],
      ),
    ),

    SizedBox(
    height: 350,
    width: 500,
    child: ListView.builder(
    physics:  ClampingScrollPhysics(),
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount: 10,
    itemBuilder: (BuildContext context, int index) =>
        Column(
          children: [
            Container(
              margin:  EdgeInsets.all(10),
              height: 220,
              width: 400,
              decoration:   BoxDecoration(
                color: Colors.white,
                borderRadius:  BorderRadius.circular(20),
                image:  DecorationImage(
                  image: AssetImage("assets/images/img_8.png",),
                  fit: BoxFit.cover,
                  scale: 0.5,
                ),
              ),

              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Stack(
                      children: <Widget>[
                        Container(
                          padding:  EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color:   Color(0x7eafa6a6),
                            borderRadius:  BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("FLAT 50% OFF", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                Text("Available today", style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),

                        Container(
                        padding: EdgeInsets.only(left: 20),
                            child:
                            Image.asset("assets/images/img_11.png", height: 30, width: 80,)
                        ),
                      ],
                  ),
                ]
              ),
              ),

            Container(
              padding: EdgeInsets.all(10),
              width: 400,
              decoration: BoxDecoration(
                color:   const Color(0xeaffffff),
                borderRadius:  BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Split Bean", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                      Text.rich(
                        TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(
                                child: Icon(Icons.star_border_outlined,color: Colors.green,)),
                            TextSpan(
                              text: '4.3 ',style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold, ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Vijay Nagar", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      Text("3.7 km", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Chinese, North Indian", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                      Text("Rs900 for two",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),

          ),
        ),
    ]
   ),


        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Additional Offers", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
              Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/img_12.png", height: 60, ),
                        Text("FLAT Rs150 Off", style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),),
                        Text("6/6", style: TextStyle(color: Colors.orange),),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(width: 70,),
             Text("USE GIFT150", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10, color: Colors.grey),),
                        Text("...", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),)
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        )] );
  }
}