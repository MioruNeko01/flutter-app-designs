import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyNavBar extends StatefulWidget {
  const MyNavBar({super.key});

  @override
  State<MyNavBar> createState() => _MyNavBarState();
}

class _MyNavBarState extends State<MyNavBar> {
  final selected = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xff131613),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected[0] = true;
              });
            },
            child: SvgPicture.asset(
              "assets/svgs/home.svg",
              width: selected[0] == true ? 25 : 20,
              height: selected[0] == true ? 25 : 20,
              color: selected[0] == true ? Colors.white : Colors.grey,
            ),
          ),
          SvgPicture.asset(
            "assets/svgs/chat.svg",
            width: selected[1] == true ? 25 : 20,
            height: selected[1] == true ? 25 : 20,
            color: selected[1] == true ? Colors.white : Colors.grey,
          ),
          SvgPicture.asset(
            "assets/svgs/note.svg",
            width: selected[2] == true ? 25 : 20,
            height: selected[2] == true ? 25 : 20,
            color: selected[2] == true ? Colors.white : Colors.grey,
          ),
          SvgPicture.asset(
            "assets/svgs/account.svg",
            width: selected[3] == true ? 25 : 20,
            height: selected[3] == true ? 25 : 20,
            color: selected[3] == true ? Colors.white : Colors.grey,
          ),
        ],
      ),
    );
  }
}
