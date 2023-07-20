import 'package:flutter/material.dart';

import '../main.dart';



class GiftScreen extends StatelessWidget {
  const GiftScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SliverAppBarExample();
  }
}

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Color(0xffcf26ea),
          pinned: _pinned,
          snap: _snap,
          floating: _floating,
          expandedHeight: 160.0,
          title:     Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xffffffff),
                    shape: CircleBorder()
                ),
                child: Icon(
                  Icons.cancel_outlined,
                  color: Colors.grey,

                ),
                onPressed: () {},
              ),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xffffffff),
                    shape: CircleBorder()
                ),
                child: Icon(
                  Icons.help_outline,
                  color: Colors.grey,

                ),
                onPressed: () {},
              ),
            ],
          ),
          flexibleSpace:  FlexibleSpaceBar(
            background: Image.asset("assets/images/img_9.png",
              width: double.maxFinite,
              fit: BoxFit.cover,),
          ),
        ),

        SliverToBoxAdapter(

        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 2,
                (BuildContext context, int index) {
              return  Column(
                children: [
                  Container(

                    margin: EdgeInsets.all(10),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    height: 290,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Up to Rs400\ncashback*", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                            SizedBox(width: 30,),
                            Icon(Icons.favorite_border_outlined,)
                          ],
                        ),
                        SizedBox(height: 10,),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),

                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("on your next purchase of E-Voucher"),
                                  Text("with PhonePe")
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            SizedBox(
                              width: 370,
                              height: 40,
                              child: ElevatedButton(
                                child: Text("AVAIL OFFER"),
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffcf26ea),
                                ),
                              ),
                            ),
                            SizedBox(height: 25,),
                            SizedBox(
                              width: 370,
                              height: 40,
                              child: OutlinedButton(
                                style:  ButtonStyle(
                                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                                          (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.focused)) {
                                          return const Color(0xffcf26ea);
                                        }
                                        return null; // Defer to the widget's default.
                                      }
                                  ),
                                ),
                                child: Text("GIFT NOW", style: TextStyle(
                                  color: Color(0xffcf26ea),
                                ),),
                                onPressed: () {},
                              ),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16 ),
                    margin: EdgeInsets.all(10),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.calendar_month),
                            Text("Expires on 15th May 2023, 11:59 PM"),
                            SizedBox(width: 30,),
                          ],
                        ),
                        Divider(  height: 20,
                          color: Colors.grey,
                          indent: 70,
                          endIndent: 50,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.medical_information_rounded),

                            Text("Offer Details"),
                            SizedBox(width: 83,),
                            Icon(Icons.arrow_drop_down)
                          ],

                        ),
                      ],
                    ),


                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    margin: EdgeInsets.all(10),
                    decoration:  BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Reward Received for The Transaction"),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Icon(Icons.mobile_friendly_outlined, color:  Color(0xffcf26ea),),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Mobile recharged",style: TextStyle(color: Colors.grey),),
                                Text("123456789")
                              ],
                            ),
                            SizedBox(width: 155,),
                            Text("Rs 549"),
                          ],

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>  MyApp()),
                                  );
                                },
                                child: Text('VIEW DETAILS',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),

                            SizedBox(width: 20,),
                          ],
                        ),

                      ],

                    ),


                  ),

                ],
              );
            },

          ),
        ),
      ],
    );

  }
}
