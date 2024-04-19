import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:weather/page/home/home_controller.dart';
import 'package:weather/widgets/images.dart';

class BlockTitle extends GetView<HomeController> {
  BlockTitle({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 172.sp,
        height: 182.sp,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17.sp),
          color: Color(0xffFAE2BD),
        ),
        child: Container(
          margin: EdgeInsets.only(top: 11, bottom: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      color: Color(0xffEFAA82),
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(
                    width: 2.sp,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Color(0xffEFAA82),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(AppImages.imgIcon2),
                  ),
                  Stack(
                    children: [
                      Text(
                        '${controller.weathers.value.temp}',
                        style: TextStyle(
                          color: Color(0xffEFAA82),
                          fontWeight: FontWeight.w500,
                          fontSize: 37.sp,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 95),
                        child: Image(
                          image: AssetImage(AppImages.imgIcon1),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                '${controller.weathers.value.main}',
                style: TextStyle(
                  color: Color(0xffEFAA82),
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                '${controller.weathers.value.location}',
                // "fsdf",
                style: TextStyle(
                  color: Color(0xffEFAA82),
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  decoration: TextDecoration.none,
                ),
              ),
              Text(
                '${controller.weathers.value.date}',
                style: TextStyle(
                  color: Color(0xffEFAA82),
                  fontWeight: FontWeight.w500,
                  fontSize: 10.sp,
                  decoration: TextDecoration.none,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Feels like ${controller.weathers.value.feel} |',
                    style: TextStyle(
                      color: Color(0xffEFAA82),
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    ' Sunset ${controller.weathers.value.sunset}',
                    style: TextStyle(
                      color: Color(0xffEFAA82),
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
