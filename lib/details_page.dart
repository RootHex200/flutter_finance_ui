import 'package:finance_ui/home_page.dart';
import 'package:finance_ui/widgets/chart_view.dart';
import 'package:finance_ui/widgets/colors.dart';
import 'package:finance_ui/widgets/nav_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

List datas = [
  "Sales Revenue",
  [Icons.settings, "230k", "Sales", Appcolor.item_1],
  [Icons.person, "8.549k", "Customers", Appcolor.item_2],
  [CupertinoIcons.add_circled, "1.423k", "Products", Appcolor.item_3],
  [Icons.money, "\$9745k", "Revenue", Appcolor.item_4]
];

class Detials_page extends StatelessWidget {
  const Detials_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.bg_color,
      body: SingleChildScrollView(

        child: Column(
          children: [
            const Nav_bar(),
            const Chart_view(),
            Container(
              margin:  const EdgeInsets.only(left: 20, right: 20),
              height: 370,
              decoration: BoxDecoration(
                  color: Appcolor.item_ist_bg,
                  borderRadius: BorderRadius.circular(22)),
              child: ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, index) {
                
                return Container(
                  margin:const  EdgeInsets.only(bottom: 10),
                  child: index==0?Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(datas[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)):
                  ListTile(
                    leading: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: datas[index][3]
                      ),
                      child: Center(child: Icon(datas[index][0]),),
                    ),
                    trailing: Text(datas[index][1],style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),
                    title: Text(datas[index][2],style: const TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    subtitle: const Text("Since lost week",style: TextStyle(color: Colors.grey,fontSize: 14),),
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
