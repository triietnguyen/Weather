import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/page/home/block/item_humidity_block.dart';
import 'package:weather/page/home/block/random_text.dart';
import 'package:weather/page/home/block/title_block.dart';
import 'package:weather/widgets/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.imgBackGround),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    BlockTitle(),
                    SizedBox(
                      height: 17.sp,
                    ),
                    const ItemHumidityBlock(),
                    SizedBox(
                      height: 38.4.sp,
                    ),
                    const RandomText(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
