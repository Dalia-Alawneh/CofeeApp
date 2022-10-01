import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({required this.title, required this.imgPath, required this.price});
  final String imgPath;
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(image:
              AssetImage(imgPath),),
            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text(title,style:TextStyle(fontSize: 17,)),
                 SizedBox(
                   height: 5,
                 ),
                 Text("With Almond Milk",
                   style:TextStyle(color: Colors.grey[700]),),
               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$'+ price),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.orange , borderRadius: BorderRadius.circular(5)),
                    child: Icon(Icons.add),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
