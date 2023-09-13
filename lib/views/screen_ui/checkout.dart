import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.chevron_left,color: Colors.black38,size: 32,),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Text('Checkout',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontSize: 40)),
      ),
    );
  }
}
