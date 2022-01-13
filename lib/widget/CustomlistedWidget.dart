import 'package:credpaltest/util/constant.dart';
import 'package:credpaltest/widget/fireMoreWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'customWidget.dart';

class ListedWidgetDateExcercise extends StatelessWidget {
  final String date, month, numberOfExcercises, typeOfExercise;
  final Color colorBk;

  ListedWidgetDateExcercise(
      {this.date,
      this.month,
      this.numberOfExcercises,
      this.typeOfExercise,
      this.colorBk});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      height: size.height * 0.12.h,
      width: size.width * 0.58.w,
      decoration: BoxDecoration(
          color: Color(0xff403A68), borderRadius: BorderRadius.circular(16.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CalenderII(
            colorRay: colorBk,
            month: month,
            date: date,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 6.h),
            height: size.height * 0.08.h,
            width: size.width * 0.3.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomDash(
                      size: size,
                      color: rBTNColorV,
                    ),
                    CustomDash(
                      size: size,
                      color: rBTNColorVI,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.0.h),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      typeOfExercise,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    '$numberOfExcercises Exercises',
                    style: TextStyle(
                      color: Color(0xff938EB0),
                      fontSize: 9.5.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
