import 'package:flutter/material.dart';

  class RewardsScreen extends StatelessWidget {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return  CustomScrollView(
  // color:  Color(0xfff3ebf6),
    slivers: [
      SliverAppBar(
        backgroundColor: Color(0xffcf26ea),
        pinned: false,
        snap: false,
        floating: false,
        expandedHeight: 400.0,
        collapsedHeight: 180.0,
        title: Row(
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
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset("assets/images/img_9.png",
            width: double.maxFinite,
            fit: BoxFit.cover,),
        ),
        bottom: PreferredSize(preferredSize: Size.fromHeight(10),
          child: Container(
            padding: EdgeInsets.only(top: 10),
            margin: EdgeInsets.all(10),
            decoration:  BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            height: 300,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Up to Rs400\ncashback*", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Icon(Icons.favorite_border_outlined,)
                  ],
                ),
                SizedBox(height: 15),
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(right: 80),
                        child:
                        Text("on your next purchase of E-Voucher\nwith PhonePe")),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 300,
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
                      width: 300,
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
        ),

      ),
      SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.only( top: 10,bottom: 10),
          margin: EdgeInsets.all(20),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.calendar_month),
                  Text("Expires on 15th May 2023, 11:59 PM"),
                ],

              ),
              Divider(  height: 50,
                color: Colors.grey,
                thickness: 1,
                indent: 20,
                endIndent: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.perm_device_information_outlined),
                  Text("Offer Details"),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_drop_down)
                ],

              ),
            ],
          ),


        ),
      ),
      SliverToBoxAdapter(
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          margin: EdgeInsets.all(20),
          decoration:  BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Reward Received for The Transaction"),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.mobile_friendly_outlined, color:  Color(0xffcf26ea),),
                  Text("Mobile recharged\n 12345677889"),
                  SizedBox(width: 25,),
                  Text("Rs 549"),
                ],

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("VIEW DETAILS")
                ],
              )
            ],

          ),


        ),
      ),

    ],



  );
  }
  }

