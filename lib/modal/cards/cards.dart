import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final List<Map<String, String>> items;

  Cards({required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: .90),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(4),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.network(
                  //   items[index]['imageURL']!,
                  //   width: 100,
                  //   height: 150,
                  //   fit: BoxFit.cover,
                  // ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: Image.asset(
                        items[index]['imageURL']!,
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    items[index]['heading']!,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                  Text(items[index]['description']!),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}



// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class Cards extends StatelessWidget {
//   final List<Map<String, String>> items;

//   Cards({required this.items});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 8,
//               mainAxisSpacing: 8,
//               childAspectRatio: .90),
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Card(
//               // margin: EdgeInsets.all(4),
//               child: Column(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.network(
//                     items[index]['imageURL']!,
//                     width: 100,
//                     height: 150,
//                     fit: BoxFit.cover,
//                   ),
//                   SizedBox(height: 8),
//                   Text(
//                     items[index]['heading']!,
//                     style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
//                   ),
//                   Text(items[index]['description']!),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// class CartItem {
//   final String image;
//   final String name;
//   final String description;
//   final double price;
//   final IconData icon;

//   CartItem({
//     required this.image,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.icon,
//   });
// }

// class ColCarts extends StatelessWidget {
//   final List<CartItem> cartItems;

//   ColCarts({required this.cartItems});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(12),
//       child: GridView.builder(
//         itemBuilder: (BuildContext context, int index) {
//           final item = cartItems[index];
//           return Container(
//             margin: EdgeInsets.all(0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: ClipRRect(
//                     borderRadius: BorderRadius.circular(8),
//                     child: Image.asset(
//                       item.image,
//                       height: double.infinity,
//                       width: double.infinity,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   item.name,
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w600,
//                     color: Colors.grey,
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Text(
//                   item.description,
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w600,
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Container(
//                   padding: EdgeInsets.only(right: 15),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         '\$${item.price.toString()}',
//                         style: TextStyle(color: Colors.green),
//                       ),
//                       Icon(item.icon)
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//         itemCount: cartItems.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           childAspectRatio: 0.6,
//           crossAxisCount: 2,
//           crossAxisSpacing: 11,
//           mainAxisSpacing: 11,
//         ),
//       ),
//     );
//   }
// }