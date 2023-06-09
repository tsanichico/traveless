import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traveless/models/topdestination.dart';
import 'package:traveless/utils/app_color.dart';
import 'package:traveless/utils/app_typography.dart';

class TopDestinationWidget extends StatefulWidget {
  final TopDesCard topDesCard;

  TopDestinationWidget(this.topDesCard);

  @override
  _TopDestinationWidgetState createState() => _TopDestinationWidgetState();
}

class _TopDestinationWidgetState extends State<TopDestinationWidget> {
  bool isFavorite = false;

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Image.asset(
            widget.topDesCard.imageUrl,
            height: 193,
            width: 195,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 80,
            child: Container(
              padding: EdgeInsets.only(
                left: 8,
                right: 8,
                top: 8,
                bottom: 8,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    color: AppColor.grey4.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              widget.topDesCard.name,
                              style: AppTypography.heading6.copyWith(
                                color: AppColor.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                            height: 14,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.place,
                                    size: 11,
                                    color: AppColor.white,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      widget.topDesCard.location,
                                      style: AppTypography.Body5.copyWith(
                                        color: AppColor.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
    );
  }
}
