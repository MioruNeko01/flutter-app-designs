import 'package:flutter/material.dart';

class ClaimWidget extends StatelessWidget {
  const ClaimWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 20, left: 18, right: 18),
      decoration: BoxDecoration(
        color: const Color(0xff4faf5a),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Claim your daily\nfree delivery now!",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: StadiumBorder(),
                ),
                child: const Text(
                  "Order now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 150,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/thumbsup.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
