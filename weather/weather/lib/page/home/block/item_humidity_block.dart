import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/page/home/widget/item_humidity_wiget.dart';

class ItemHumidityBlock extends StatelessWidget {
  const ItemHumidityBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.9,
      child: Container(
        width: 172.sp,
        height: 92.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11.sp),
          color: const Color(0xffFAE2BD),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemHumidityWidget(
                    text1: 'Now',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '2 AM',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '3 AM',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '4 AM',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '5 AM',
                    text2: '25',
                  ),
                ],
              ),
              Divider(
                color: Color(0xffFFFFFF),
                thickness: 1,
                indent: 14,
                endIndent: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemHumidityWidget(
                    text1: 'Now',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '2 AM',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '3 AM',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '4 AM',
                    text2: '25',
                  ),
                  ItemHumidityWidget(
                    text1: '5 AM',
                    text2: '25',
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
