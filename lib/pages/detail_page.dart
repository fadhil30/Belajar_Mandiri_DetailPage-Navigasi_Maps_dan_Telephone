import 'dart:math';

import 'package:cozy_app/theme.dart';
import 'package:cozy_app/widget/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        throw (url);
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/city3.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text.rich(TextSpan(
                                    text: '\$52',
                                    style:
                                        purpleTextStyle.copyWith(fontSize: 18),
                                    children: [
                                      TextSpan(
                                          text: ' / month',
                                          style: greyTextStyle.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w300))
                                    ])),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/Icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/Icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/Icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/Icon_star.png',
                                  width: 20,
                                ),
                                const SizedBox(width: 2),
                                Image.asset(
                                  'assets/images/Icon_star.png',
                                  width: 20,
                                  color: Color(0xff989BA1),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                              name: 'kitchen',
                              total: 2,
                              imageURL: 'assets/images/icon_kitchen.png',
                            ),
                            FacilityItem(
                              name: 'bedroom',
                              total: 3,
                              imageURL: 'assets/images/icon_bedroom.png',
                            ),
                            FacilityItem(
                              name: 'Big Lemari',
                              total: 3,
                              imageURL: 'assets/images/icon_cupboard.png',
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                            Image.asset(
                              'assets/images/photo1.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/photo2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/photo3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(fontSize: 16),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jln. Kappan Sukses No. 20\nPalembang',
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                    'https://www.google.com/maps/@-6.3110787,106.7707404,18.29z');
                              },
                              child: Image.asset(
                                'assets/images/btn_map.png',
                                width: 40,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: ElevatedButton(
                          onPressed: () {
                            launchUrl('tel://+6282299227661');
                          },
                          style: ElevatedButton.styleFrom(
                              primary: purpleColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17))),
                          child: Text(
                            'Book Now',
                            style: whiteTextStyle.copyWith(fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
