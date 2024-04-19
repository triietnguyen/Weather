import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/widgets/images.dart';

class ItemHumidityWidget extends StatelessWidget {
  final String text1;
  final String text2;
  const ItemHumidityWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w400,
            fontSize: 8.sp,
            decoration: TextDecoration.none,
          ),
        ),
        Row(
          children: [
            Image(
              image: AssetImage(AppImages.imgIcon3),
            ),
            Stack(
              children: [
                Text(
                  text2,
                  style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.w400,
                    fontSize: 8.sp,
                    decoration: TextDecoration.none,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Image(
                    image: AssetImage(AppImages.imgIcon4),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
