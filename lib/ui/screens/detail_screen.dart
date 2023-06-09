import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traveless/models/topdestination.dart';
import 'package:traveless/ui/screens/home_screen.dart';
import 'package:traveless/ui/screens/success_screen.dart';
import 'package:traveless/utils/app_color.dart';
import 'package:traveless/utils/app_typography.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'assets/detailpict.png',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                SafeArea(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        'Details',
                        style: AppTypography.heading6.copyWith(
                          fontSize: 20,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 22,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColor.white,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: AppColor.black1,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  right: 20,
                  height: 320,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColor.black1.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 15,
                              top: 15,
                              right: 15,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Pantai Ubud',
                                    style: AppTypography.Heading5.copyWith(
                                      color: AppColor.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pariwisata Ubud juga di dukung dengan lengkapnya sarana akomodasi, tersedia dari hotel murah sampai resort mewah. Mencari tempat makan juga sangat mudah di Ubud, dan saat ini area pariwisata Ubud sangat terkenal menjadi destinasi wisata Kuliner di Bali.',
                                  style: AppTypography.Body5.copyWith(
                                    color: AppColor.white,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Distance',
                                          style:
                                              AppTypography.heading6.copyWith(
                                            fontSize: 14,
                                            color: AppColor.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          '105ml',
                                          style: AppTypography.Body5.copyWith(
                                            fontSize: 10,
                                            color: AppColor.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Elevation',
                                          style:
                                              AppTypography.heading6.copyWith(
                                            fontSize: 14,
                                            color: AppColor.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          '3.872',
                                          style: AppTypography.Body5.copyWith(
                                            fontSize: 10,
                                            color: AppColor.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Difficulty',
                                          style:
                                              AppTypography.heading6.copyWith(
                                            fontSize: 14,
                                            color: AppColor.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          'Easy',
                                          style: AppTypography.Body5.copyWith(
                                            fontSize: 10,
                                            color: AppColor.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SuccessScreen(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(
                                      MediaQuery.of(context).size.width -
                                          (2 * 16),
                                      50,
                                    ),
                                    elevation: 0,
                                    backgroundColor: AppColor.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Join Trip',
                                        style: AppTypography.heading6.copyWith(
                                          fontSize: 18,
                                          color: AppColor.black1,
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: AppColor.black1,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
