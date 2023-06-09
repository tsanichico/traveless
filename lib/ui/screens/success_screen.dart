import 'package:flutter/material.dart';
import 'package:traveless/ui/screens/home_screen.dart';
import 'package:traveless/utils/app_color.dart';
import 'package:traveless/utils/app_typography.dart';

class SuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'assets/success.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Text(
                'Success',
                style: AppTypography.Heading4.copyWith(
                  fontSize: 36,
                  color: AppColor.black1,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Congratulations! \nYour Just Take a Trip',
                textAlign: TextAlign.center,
                style: AppTypography.Body3.copyWith(
                  fontSize: 14,
                  color: AppColor.black1,
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              // Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: Text(
                  'Back to Home',
                  style: AppTypography.heading6.copyWith(
                    color: AppColor.white,
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primary,
                  fixedSize: Size(
                    MediaQuery.of(context).size.width - (2 * 20),
                    50,
                  ),
                  elevation: 0,
                ),
              ),
              SizedBox(
                height: 35,
              ),
            ],
          )
        ],
      )),
    );
  }
}
