// import 'package:flutter/material.dart';
// import 'package:medicalstoreapp/src/common_widgets/pakage_size.dart';
// import 'package:medicalstoreapp/src/constants/image_strings.dart';
// import 'package:medicalstoreapp/src/provider/cart_provider.dart';
// import 'package:medicalstoreapp/src/screens/cart_screen.dart';
// import 'package:provider/provider.dart';

// class DetailScreen extends StatelessWidget {
//   const DetailScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final cart = Provider.of<CartProvider>(context);

//     return Scaffold(
//       appBar: AppBar(
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(
//               right: 30,
//             ),
//             child: Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const CartScreen()));
//                   },
//                   child: const Icon(
//                     Icons.shopping_bag_outlined,
//                   ),
//                 ),
//                 cart.items.isNotEmpty
//                     ? Positioned(
//                         right: -2,
//                         top: -5,
//                         child: Container(
//                           height: 15,
//                           width: 15,
//                           decoration: const BoxDecoration(
//                               shape: BoxShape.circle, color: Colors.red),
//                           child: Center(
//                             child: Text(
//                               cart.items.length.toString(),
//                               style: const TextStyle(
//                                   color: Colors.white, fontSize: 10),
//                             ),
//                           ),
//                         ),
//                       )
//                     : const SizedBox(),
//               ],
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 "Sugar Free Gold Low Calories",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.w700,
//                 ),
//               ),
//               // SizedBox(height: 10,),
//               Text(
//                 "Etiam mollis metus non purus ",
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w400,
//                     color: Colors.grey.withOpacity(0.6)),
//               ),
//               Container(
//                   color: const Color(0xffF8F8F8),
//                   height: 178,
//                   width: MediaQuery.of(context).size.width,
//                   child: Image.asset(productImage2)),
//               const SizedBox(
//                 height: 10,
//               ),
//               ListTile(
//                 title: Row(
//                   children: [
//                     Text(
//                       "Rs.99",
//                       style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w700,
//                           color: Colors.grey.withOpacity(0.5)),
//                     ),
//                     const Text(
//                       "Rs.56",
//                       style:
//                           TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
//                     ),
//                   ],
//                 ),
//                 subtitle: const Text("Etiam mollis "),
//                 trailing: TextButton(
//                   onPressed: () {
//                     Provider.of<CartProvider>(context, listen: false).addItem(
//                         'productId',
//                         56,
//                         'Sugar Free Gold Low Calories',
//                         productImage2);
//                   },
//                   child: const Text(
//                     "Add to cart",
//                     style: TextStyle(
//                         color: Color(
//                       0xff006AFF,
//                     )),
//                   ),
//                 ),
//               ),
//               const Divider(),

//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Package Size",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//               ),

//               const SizedBox(
//                 height: 20,
//               ),
//               const Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CustomPkgSize(heading: "Rs.106", subHeading: "110 pellets"),
//                   CustomPkgSize(heading: "Rs.166", subHeading: "300 pellets"),
//                   CustomPkgSize(heading: "Rs.252", subHeading: "500 pellets"),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               const Text(
//                 "Product Details",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. \nNunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w200,
//                     color: Colors.grey.withOpacity(0.5)),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Text(
//                 "Ingredients",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. \nNunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
//                 style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w200,
//                     color: Colors.grey.withOpacity(0.5)),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text("Expiry Date",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: Text(
//                       "10/10/2025",
//                       style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w200,
//                           color: Colors.grey.withOpacity(0.5)),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   const Text("Brand Name",
//                       style:
//                           TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: Text(
//                       "Something",
//                       style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w200,
//                           color: Colors.grey.withOpacity(0.5)),
//                     ),
//                   ),
//                 ],
//               ),

//               SizedBox(
//                   width: 332,
//                   child: Image.asset(
//                     ratingImage,
//                     fit: BoxFit.fitWidth,
//                   )),
//               const SizedBox(
//                 height: 20,
//               ),
//               Column(
//                 children: [
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text("Erric Hoffman",
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.w600)),
//                         Text("05- oct 2020",
//                             style: TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w200,
//                                 color: Colors.grey.withOpacity(0.5))),
//                       ]),
//                   Text(
//                       "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.\nNunc risus massa, gravida id egestas ",
//                       style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.w200,
//                           color: Colors.grey.withOpacity(0.5))),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       // bottomNavigationBar:
//       // // Padding(
//       // //     padding:
//       // //         const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
//       // //     child: InkWell(
//       // //       onTap: () {
//       // //         Navigator.push(context,
//       // //             MaterialPageRoute(builder: (context) => const CartScreen()));
//       // //       },
//       // //       child: Container(
//       // //           height: 50,
//       // //           decoration: BoxDecoration(
//       // //               color: const Color(0xff4157FF),
//       // //               borderRadius: BorderRadius.circular(40)),
//       // //           child: const Center(
//       // //             child: Text("Go To Cart",
//       // //                 style: TextStyle(
//       // //                     color: Colors.white,
//       // //                     fontSize: 20,
//       // //                     fontWeight: FontWeight.bold)),
//       // //           )),
//       // //     )),
//     );
//   }
// }
