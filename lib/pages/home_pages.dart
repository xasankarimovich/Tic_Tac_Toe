// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
//
// import '../utils/extensions.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   DateTime date = DateTime.now();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.yellow,
//         title: Text(
//           "35 - dars",
//         ),
//         centerTitle: true,
//       ),
//       body: Stack(
//         children: [
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               TextButton(
//                 onPressed: () async {
//                   DateTime? newDate = await showDatePicker(
//                     context: context,
//                     firstDate: DateTime(1000),
//                     lastDate: DateTime(2025),
//                     currentDate: DateTime.now(),
//                   );
//                   if (newDate != null) {
//                     date = newDate;
//                     setState(() {});
//                   }
//                 },
//                 child: Text(
//                   date.format(),
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       style: IconButton.styleFrom(
//                         foregroundColor: Colors.grey,
//                         side: BorderSide(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       icon: Icon(
//                         CupertinoIcons.arrow_left_circle_fill,
//                         size: 40,
//                       ),
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         Text(
//                           "4,950,000",
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontWeight: FontWeight.w900,
//                             height: 0.7,
//                             color: Colors.black,
//                           ),
//                         ),
//                         Text(
//                           "so'm",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ],
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       style: IconButton.styleFrom(
//                         foregroundColor: Colors.grey,
//                         side: BorderSide(
//                           color: Colors.grey,
//                         ),
//                       ),
//                       icon: Icon(
//                         CupertinoIcons.arrow_right_circle_fill,
//                         size: 40,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Positioned(
//                 left: 0,
//                 right: 0,
//                 top: 320,
//                 bottom: 0,
//                 child: Container(
//                   height: 400,
//                   decoration: const BoxDecoration(
//                     color: Colors.purple,
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(70),
//                       topRight: Radius.circular(70),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(40),
//                     child: Column(
//                       children: [
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Oylik byudjet:",
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black38,
//                               ),
//                             ),
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(
//                                 Icons.edit_rounded,
//                                 color: Colors.blueAccent,
//                               ),
//                             ),
//                             10.height(),
//                             Text(
//                               "100,000,000 so'm",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 color: Colors.blueAccent,
//                                 fontSize: 24,
//                               ),
//                             ),
//                             Spacer(),
//                             Text(
//                               "4.9%",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.normal,
//                                 color: Colors.black38,
//                                 fontSize: 24,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Container(
//                         height: 5,
//                         color: Colors.grey,
//                         width: double.infinity,
//                         alignment: Alignment.centerLeft,
//
//                         child:Container(
//                           height: 20,
//                           width: 100,
//                           color: Colors.blueAccent,
//                         ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             top: 320,
//             bottom: 0,
//             child: Container(
//               height: 400,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(70),
//                   topRight: Radius.circular(70),
//                 ),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(35),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.timer,
//                             size: 35,
//                           ),
//                           style: IconButton.styleFrom(
//                             backgroundColor: Colors.purple.shade50,
//                           ),
//                         ),
//                         10.width(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Qovun",
//                               style: AppTextStyles.HeadLineblack,
//                             ),
//                             Text(
//                               "14-August-2021",
//                               style: AppTextStyles.Paragraphblack,
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Text(
//                           "20,000 so'm",
//                           style: AppTextStyles.Paragraphblack,
//                         ),
//                       ],
//                     ),
//                     10.height(),
//                     Divider(),
//                     10.height(),
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.credit_card,
//                             size: 35,
//                           ),
//                           style: IconButton.styleFrom(
//                             backgroundColor: Colors.purple.shade50,
//                           ),
//                         ),
//                         10.width(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Konditsioner kredit",
//                               style: AppTextStyles.HeadLineblack,
//                             ),
//                             Text(
//                               "14-August-2021",
//                               style: AppTextStyles.Paragraphblack,
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Text(
//                           "350,000 so'm",
//                           style: AppTextStyles.Paragraphblack,
//                         ),
//                       ],
//                     ),
//                     10.height(),
//                     Divider(),
//                     10.height(),
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.airplane_ticket,
//                             size: 35,
//                           ),
//                           style: IconButton.styleFrom(
//                             backgroundColor: Colors.purple.shade50,
//                           ),
//                         ),
//                         10.width(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "New York Bilet",
//                               style: AppTextStyles.HeadLineblack,
//                             ),
//                             Text(
//                               "14-August-2021",
//                               style: AppTextStyles.Paragraphblack,
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Text(
//                           "4,500,000 so'm",
//                           style: AppTextStyles.Paragraphblack,
//                         ),
//                       ],
//                     ),
//                     10.height(),
//                     Divider(),
//                     10.height(),
//                     Row(
//                       children: [
//                         IconButton(
//                           onPressed: () {},
//                           icon: Icon(
//                             Icons.airplane_ticket,
//                             size: 35,
//                           ),
//                           style: IconButton.styleFrom(
//                             backgroundColor: Colors.purple.shade50,
//                           ),
//                         ),
//                         10.width(),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Obed",
//                               style: AppTextStyles.HeadLineblack,
//                             ),
//                             Text(
//                               "14-August-2021",
//                               style: AppTextStyles.Paragraphblack,
//                             ),
//                           ],
//                         ),
//                         Spacer(),
//                         Text(
//                           "45,000 so'm",
//                           style: AppTextStyles.Paragraphblack,
//                         ),
//                       ],
//                     ),
//                     10.height(),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
