import 'dart:ui';

import 'package:finance_ui/widgets/colors.dart';
import 'package:finance_ui/widgets/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

List data = [
  [Icons.settings,"230k","Sales",Appcolor.item_1],
  [Icons.person,"8.549k","Customers",Appcolor.item_2],
  [CupertinoIcons.add_circled,"1.423k","Products",Appcolor.item_3],
  [Icons.money,"\$9745k","Revenue",Appcolor.item_4]

];


class Home_page extends StatelessWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bg_color,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //nav var
            const Nav_bar(),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello David',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Colors.grey, style: BorderStyle.solid)),
                    child: Icon(
                      Icons.more_horiz,
                      size: 30,
                      color: Appcolor.icon_bg,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Welcome Back!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: CupertinoSearchTextField(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Appcolor.grey_bg,
                ),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  size: 20,
                  color: Colors.grey,
                ),
                placeholder: "Search",
                placeholderStyle: const TextStyle(color: Colors.grey),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              ),
            ),

            Container(
              height: 400,
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 0.9,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      crossAxisCount: 2),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 60,
                      decoration:BoxDecoration(
                        shape: BoxShape.circle,
                        color: data[index][3],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30),
                            child: Icon(data[index][0],size: 25,)),
                            const SizedBox(height: 10,),
                          Text(data[index][1],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                          const SizedBox(height: 10,),
                          Text(data[index][2],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 13),)

                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),


      
    );
  }
}
