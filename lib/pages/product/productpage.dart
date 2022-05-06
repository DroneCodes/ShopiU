// import 'package:flutter/material.dart';

// this one is for the gridview

class ProductPageGrid {

  final String name;
  final String price;
  final String imageurl;

  ProductPageGrid(
      {required this.name, required this.price, required this.imageurl});
}
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//           children: [
//             Expanded(child: ClipRRect(
//               borderRadius: BorderRadius.circular(10),
//               child: Image.asset(imageurl),
//             )),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Text(dollarsign + price),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(name),
//                 SizedBox(width: 5,),
//                 Icon(icon,
//                 color: Colors.black,)
//               ],
//             )
//           ],
//     );
//   }
// }
