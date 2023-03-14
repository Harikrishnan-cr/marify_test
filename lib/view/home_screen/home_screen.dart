import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:marrify/const/color/colors.dart';
import 'package:marrify/const/fonts/fonts.dart';
import 'package:marrify/const/size/size.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  final profileImage =
      'https://st2.depositphotos.com/2288675/5430/i/450/depositphotos_54306899-stock-photo-balance-and-harmony-in-nature.jpg';
  final name = 'Name';
  final greetings = 'Hi,Good';
  final age = 22;
  final job = 'Flutter developer';
  final iconsSvg = 'assets/icons/briefcase.svg';
  final cast = 'Buddhist , Patel';
  final icon = const Icon(Icons.safety_check);
  final text = 'Accept';
  final color = Colors.amber;
  final size = 30.0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const sizeBoxWidget(size: 20),
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 231, 3, 3),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 55,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 3),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.black,
                              image: DecorationImage(
                                  image: NetworkImage(profileImage),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                    commonWidth10,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          greetings,
                          style: GoogleFont.homeTextStyle,
                        ),
                        Text(
                          name,
                          style: GoogleFont.homeTextStyle,
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          blurStyle: BlurStyle.outer,
                          blurRadius: 1.0,
                          spreadRadius: 1.8,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                      image: DecorationImage(
                          image: Svg('assets/icons/Configure.svg',
                              size: Size(29, 29),
                              color: MarraifyColors.primaryColorPink))),
                )
              ],
            ),
          ),
          const sizeBoxWidget(size: 10),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Stack(
                children: [
                  Container(
                    height: 378,
                    decoration: BoxDecoration(
                        // color: Colors.amber,
                        image: const DecorationImage(
                            image:
                                AssetImage('assets/images/Rectangle 401.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                      left: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                          width: width * 0.75,
                          child: Text(
                            'Sample Data to checkkkkkkkkffffffdddddddddddddd',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: GoogleFont.homeScreenFirstImage,
                          ),
                        ),
                      )),
                  Positioned(
                    top: 90,
                    left: 15,
                    child: SizedBox(
                      // color: Color.fromARGB(255, 52, 7, 255),
                      width: 250,
                      height: 190,

                      child: Column(
                        children: List.generate(
                            5,
                            (index) => Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, bottom: 8, top: 8),
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 6,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                MarraifyColors.grediantColorTwo,
                                                MarraifyColors.grediantColorOne
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      commonWidth10,
                                      Text(
                                        'Sample Data is need',
                                        style: GoogleFont
                                            .homeScreenFirstImageSubText,
                                      )
                                    ],
                                  ),
                                )),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 40,
                      left: 35,
                      child: Row(
                        children: [
                          Container(
                            width: width * 0.4,
                            height: 48,
                            color: Colors.amber,
                          ),
                          commonHWidth15,
                          HomeButtonOnImg(width: width, text: 'Complete'),
                        ],
                      ))
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
              child: Stack(
                children: [
                  Container(
                    height: 170,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/Rectangle 401.jpg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                      child: Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 25, right: 0),
                          child: SizedBox(
                            child: Text(
                              'Upload your Photo to complete your profle',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: GoogleFont.homeScreenFirstImage,
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    width: 349,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 255, 247, 247),
                          blurRadius: 1,
                          spreadRadius: 0.5,
                          offset: Offset(0.1, 0.5))
                    ]),
                    child: Column(
                      children: [
                        Container(
                          height: 336,
                          width: 349,
                          //color: Colors.black,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          height: 228,
                          width: 349,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 18, top: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '$name, $age yr',
                                  style: GoogleFont.homeScreenTileTextStyle,
                                ),
                                HomeScreenSvgIcons(
                                    iconsSvg: iconsSvg, text: job),
                                commonHeight5,
                                HomeScreenSvgIcons(
                                    iconsSvg: 'assets/icons/Location.svg',
                                    text: 'Kerala,calicut'),
                                commonHeight10,
                                Row(
                                  children: [
                                    HomeScreenChipWidget(
                                      data: cast,
                                      width: 125,
                                    ),
                                    commonHWidth20,
                                    HomeScreenChipWidget(
                                      data: 'Hindi',
                                      width: 60,
                                    ),
                                    commonHWidth20,
                                    HomeScreenChipWidget(
                                      data: '5 ft 5 in',
                                      width: 73,
                                    ),
                                  ],
                                ),
                                commonHeight20,
                                HomeScreenButtuonReqSection(
                                    color: color, icon: icon, text: text),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 5,
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 95,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeButtonOnImg extends StatelessWidget {
  const HomeButtonOnImg({
    super.key,
    required this.width,
    required this.text,
  });

  final double width;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * 0.33,
      height: 45,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                MarraifyColors.grediantColorTwo,
                MarraifyColors.grediantColorOne,
              ]),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Text(
          text,
          style: GoogleFont.homeScreenFirstImageButtonStyle,
        ),
      ),
    );
  }
}

class sizeBoxWidget extends StatelessWidget {
  const sizeBoxWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: size,
      ),
    );
  }
}

class HomeScreenButtuonReqSection extends StatelessWidget {
  const HomeScreenButtuonReqSection({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  final Color color;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeScreenButtonReq(
            color: MarraifyColors.primaryColorPink,
            icon: Icon(
              Icons.close,
              size: 25,
            ),
            text: 'Reject'),
        commonHWidth20,
        HomeScreenButtonReq(
            color: MarraifyColors.greenColor, icon: icon, text: text),
      ],
    );
  }
}

class HomeScreenButtonReq extends StatelessWidget {
  const HomeScreenButtonReq({
    super.key,
    required this.color,
    required this.icon,
    required this.text,
  });

  final Color color;
  final Icon icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    log(width.toString());

    return Container(
      width: width * 0.35,
      height: 46,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          commonWidthth5,
          Text(
            text,
          ),
        ],
      ),
    );
  }
}

class HomeScreenChipWidget extends StatelessWidget {
  const HomeScreenChipWidget(
      {super.key, required this.data, required this.width});

  final String data;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 22,
      width: width,
      decoration: BoxDecoration(
          color: MarraifyColors.pinkSecondary,
          borderRadius: BorderRadius.circular(20)),
      child: Center(
          child: Text(
        data,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: GoogleFont.homeScreenTileChipText,
      )),
    );
  }
}

class HomeScreenSvgIcons extends StatelessWidget {
  const HomeScreenSvgIcons({
    super.key,
    required this.iconsSvg,
    required this.text,
  });

  final String iconsSvg;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
            width: 15,
            image: Svg(iconsSvg, color: MarraifyColors.primaryColorPink)),
        commonWidthth5,
        Text(
          text,
          style: GoogleFont.homeScreenTileTextStyleSecondary,
        )
      ],
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.profileImage,
    required this.greetings,
    required this.name,
  });

  final String profileImage;
  final String greetings;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black,
                          image: DecorationImage(
                              image: NetworkImage(profileImage),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
                commonWidth10,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(greetings),
                    Text(
                      name,
                      style: GoogleFont.homeTextStyle,
                    ),
                  ],
                )
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      blurStyle: BlurStyle.outer,
                      blurRadius: 1.0,
                      spreadRadius: 1.8,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                  image: DecorationImage(
                      image: Svg('assets/icons/Configure.svg',
                          size: Size(29, 29),
                          color: MarraifyColors.primaryColorPink))),
            )
          ],
        ),
      ),
    );
  }
}
