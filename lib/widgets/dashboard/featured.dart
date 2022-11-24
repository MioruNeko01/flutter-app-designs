import 'package:delivery_mobile_app/widgets/dashboard/featureItem.dart';
import 'package:flutter/material.dart';

import '../../models/featuredItem.dart';

class FeaturedContainer extends StatelessWidget {
  const FeaturedContainer({super.key});

  @override
  Widget build(BuildContext context) {
    var featuredItems = <FeatureItem>[
      FeatureItem(
        name: "McDonald-Kartasura",
        image: "assets/featured/featured1.jpg",
        distance: "1.2 km",
        time: "15-20 minutes",
        rating: "4.8",
      ),
      FeatureItem(
        name: "McDonald-Kartasura",
        image: "assets/featured/featured2.jpg",
        distance: "1.2 km",
        time: "15-20 minutes",
        rating: "4.8",
      ),
      FeatureItem(
        name: "McDonald-Kartasura",
        image: "assets/featured/featured3.jpg",
        distance: "1.2 km",
        time: "15-20 minutes",
        rating: "4.8",
      ),
      FeatureItem(
        name: "McDonald-Kartasura",
        image: "assets/featured/featured4.jpg",
        distance: "1.2 km",
        time: "15-20 minutes",
        rating: "4.8",
      ),
    ];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Featured",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Expanded(
            child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                //childAspectRatio: 4 / 5,
              ),
              itemCount: featuredItems.length,
              itemBuilder: (BuildContext context, int index) {
                return FeaturedItem(item: featuredItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
