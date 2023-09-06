import 'package:flutter/material.dart';

class DetailsAppbar extends StatelessWidget {
  const DetailsAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: (){},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(Icons.chevron_left,color: Colors.black38,size: 32,),
            ),
          ),
          Text('My Items',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 24,color: Colors.black),),
          GestureDetector(
            onTap: (){},
            child: Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(right: 20,top: 12),
              decoration: BoxDecoration(
                color: Colors.pink[50],
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(Icons.delete_rounded,size: 32,color: Colors.black38,),
            ),
          )
        ],
      ),
    );
  }
}
