// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:moni_test/pages/product/productpage.dart';
//
//
// class CartItem extends StatelessWidget {
//   const CartItem({Key? key, required this.cartItemModel}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Padding(padding: EdgeInsets.all(8.0),
//           child: Image.asset(
//             width: 80,
//           ),
//         ),
//         Expanded(
//             child: Wrap(
//               direction: Axis.vertical,
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 14),
//                   child: Text("", style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal)),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(onPressed: () {}, icon: Icon(
//                       Icons.chevron_left
//                     )),
//                     Padding(
//                         padding: EdgeInsets.all(8.0),
//                       child: Text(P, style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.normal)),
//                     ),
//                     IconButton(
//                       icon: Icon(Icons.chevron_right),
//                       onPressed: () {},
//                     )
//                   ],
//                 )
//               ],
//             ),
//         ),
//         Padding(
//           padding: EdgeInsets.all(14),
//           child: Text("#${cartItemModel.cost}", style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),),
//         )
//       ],
//     );
//   }
// }
