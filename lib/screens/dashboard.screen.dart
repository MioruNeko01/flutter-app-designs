import 'package:delivery_mobile_app/widgets/dashboard/appbar.dart';
import 'package:delivery_mobile_app/widgets/dashboard/claim.dart';
import 'package:delivery_mobile_app/widgets/dashboard/featured.dart';
import 'package:delivery_mobile_app/widgets/dashboard/navbar.dart';
import 'package:delivery_mobile_app/widgets/dashboard/services.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(12),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Stack(
            children: const [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: MyAppBar(),
              ),
              Positioned(
                top: 100,
                left: 0,
                right: 0,
                child: ClaimWidget(),
              ),
              Positioned(
                top: 250,
                left: 0,
                right: 0,
                child: ServicesContainer(),
              ),
              Positioned(
                top: 480,
                left: 0,
                right: 0,
                child: FeaturedContainer(),
              ),
              Positioned(
                top: 650,
                left: 0,
                right: 0,
                child: MyNavBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
