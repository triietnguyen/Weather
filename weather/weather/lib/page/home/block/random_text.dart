import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RandomText extends StatelessWidget {
  const RandomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172.sp,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Random Text',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
              overflow: TextOverflow.ellipsis,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(
            height: 7.99.sp,
          ),
          Text(
            'Improve him believe opinion offered met and end cheered forbade. Friendly as stronger speedily by recurred. Son interest wandered sir addition end say. Manners beloved affixed picture men ask.',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.w600,
              fontSize: 10.sp,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
