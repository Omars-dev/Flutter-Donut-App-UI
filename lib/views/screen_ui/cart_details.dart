import 'package:flutter/material.dart';
import 'package:flutter_donut_app_ui/widgets/appbar/home_appbar.dart';

class CartDetails extends StatelessWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: HomeAppbar(),
        ),
      ),
    );
  }
}
