// import 'package:flutter/material.dart';
// import 'package:torganic/src/features/authentication/views/forgot_password/forgot.dart';
// import 'package:torganic/src/features/authentication/views/forgot_password/otp.dart';
// import 'package:torganic/src/utils/constants/colors.dart';
//
//
// class TabBarViewInfo extends StatefulWidget {
//   final String description, specification;
//
//   const TabBarViewInfo({super.key, required this.description, required this.specification});
//
//   @override
//   State<TabBarViewInfo> createState() => _TabBarViewInfoState();
// }
//
// class _TabBarViewInfoState extends State<TabBarViewInfo> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 2, vsync: this);
//     return Container(
//       height: 500,
//       child: Column(
//         children: [
//           Container(
//            height: 54,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       blurRadius: 5,
//                       offset: const Offset(0, 5) // changes position of shadow
//                   ),
//                 ]
//             ),
//             child: TabBar(
//                 indicator: const BoxDecoration(
//                     color: AppColors.borderPrimary
//                 ),
//                 unselectedLabelColor: const Color(0xff7B7B7B),
//                 controller: _tabController,
//                 tabs: const [
//                   Tab(
//                     child: Text('Description', ),),
//                   Tab(
//                     child: Text('Specification'),
//                   )
//                 ]),
//           ),
//           SizedBox(
//             height: 200,
//             width: MediaQuery.sizeOf(context).width,
//             // decoration: const BoxDecoration(
//             //   color: Colors.white,
//             //
//             // ),
//             child: TabBarView(
//               controller: _tabController,
//               children: const [
//                 Text('first Tab'),
//                 Text('second Tab'),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
