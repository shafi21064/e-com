import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/styles/spacing_style.dart';
import 'package:torganic/src/common/widgets/app_buttons.dart';
import 'package:torganic/src/common/widgets/appbar/custom_app_bar.dart';
import 'package:torganic/src/features/authentication/views/log_in/login.dart';
import 'package:torganic/src/utils/constants/sizes.dart';

import '../../drawer/view/drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        key: _globalKey,
        drawer: const NavBar(
          userName: 'User Name',
          roll: 'example@email.com',
        ),
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomAppBar(showBackArrow: false,
                    leadingIcon: Icons.menu,
                    leadingOnPress: () => _globalKey.currentState!.openDrawer()
                    ),
                  // Stack(
                  //   children: [
                  //     InkWell(
                  //         onTap: () {
                  //           _globalKey.currentState!.openDrawer();
                  //         },
                  //         child: const SizedBox(
                  //           height: 35,
                  //           width: 35,
                  //           child: Icon(Icons.menu),
                  //         )),
                  //   ],
                  // ),
                  const Gap(10),
                  Center(
                    child: Text('Home'),
                  )
                ])));
  }
}
