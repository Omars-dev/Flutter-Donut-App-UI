import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left, color: Color(0xFF424242),)
        ),
        actions: [
          IconButton(onPressed: (){},
              padding: EdgeInsets.only(right: 20),
              icon: Icon(Icons.share, color: Color(0xFF424242),)
          )
        ],
      ),
    );
  }
}
