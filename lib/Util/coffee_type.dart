import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  CoffeeType(this.coffeeType,this.isSelected, this.ontap);
  final String coffeeType;
  late final bool isSelected ;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Column(
          children: [
            Text(
              coffeeType,
              style: TextStyle(
                fontSize: 16,
                color: isSelected? Colors.orange : Colors.white
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:7),
              height: 7, width: 7,decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
                color:  isSelected? Colors.orange : Colors.white
            ),)
          ],
        ),
      ),
    );
  }
}
