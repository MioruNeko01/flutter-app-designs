import 'package:delivery_mobile_app/models/category.dart';
import 'package:flutter/material.dart';

class ServicesContainer extends StatelessWidget {
  const ServicesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var categories = <Category>[
      Category(name: "Offers", icon: "assets/images/offer.png"),
      Category(name: "Chicken", icon: "assets/images/chicken.png"),
      Category(name: "Rice", icon: "assets/images/rice.png"),
      Category(name: "Burger", icon: "assets/images/burger.png"),
      Category(name: "Pizza", icon: "assets/images/pizza.png"),
      Category(name: "Coffee", icon: "assets/images/coffee.png"),
      Category(name: "Boba", icon: "assets/images/boba.png"),
      Category(name: "Salad", icon: "assets/images/salad.png"),
    ];

    return Container(
      padding: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          childAspectRatio: 4.3 / 5,
        ),
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: Card(
              color: const Color(0xfff7f7f7),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      categories[index].icon,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    categories[index].name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
