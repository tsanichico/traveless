import 'package:flutter/material.dart';
import 'package:traveless/models/categories.dart';
import 'package:traveless/utils/app_color.dart';
import 'package:traveless/utils/app_typography.dart';

class CategoriesCardWidget extends StatelessWidget {
  final CatCard catCard;

  CategoriesCardWidget(this.catCard);

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
            catCard.imageUrl,
            height: 115,
            width: 90,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Text(
                catCard.name,
                textAlign: TextAlign.center,
                style: AppTypography.heading6.copyWith(
                  color: AppColor.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
