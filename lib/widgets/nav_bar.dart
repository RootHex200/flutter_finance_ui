import 'package:finance_ui/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Nav_bar extends StatelessWidget {
  const Nav_bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20,top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            size: 30,
            color: Appcolor.icon_bg,
          ),
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey,style: BorderStyle.solid),
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.person,
              size: 30,
              color: Appcolor.icon_bg,
            ),
          )
        ],
      ),
    );
  }
}
