import 'package:flutter/material.dart';
import 'package:nectar/core/extensions/num.dart';
import 'package:nectar/core/extensions/string.dart';
import 'package:nectar/core/utils/colors.dart';
import 'package:nectar/widgets/app_button.dart';
import 'package:nectar/widgets/app_text.dart';

class OrderAcceptedView extends StatelessWidget {
  const OrderAcceptedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          'order_accepted_bg'.assetPNG,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'accepted'.assetPNG,
              height: 230.height,
              width: 230.width,

            ),
            SizedBox(height: 64.height),
            AppText(
              title: 'Your Order has been\naccepted',
              color: AppColors.black,
              fontSize: 28.font,
              height: 34.height,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.height),
            AppText(
              title:
                  'Your items has been placcd and is on\nit’s way to being processed',
              color: AppColors.grey,
              textAlign: TextAlign.center,
              fontSize: 16.font,
            ),
            SizedBox(height: 134.height),
            AppButton(
                title: 'Track Order',
              onTap: () {},
              margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
            ),
            SizedBox(height: 24.height),
            Center(
              child: AppText(
                title: 'Back to home',
                fontWeight: FontWeight.w600,
                fontSize: 18.height,
              ),
            ),
            SizedBox(height: 64.height),
          ],
        )
      ],
    ));
  }
}
