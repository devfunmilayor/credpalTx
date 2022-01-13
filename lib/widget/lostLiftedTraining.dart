import 'package:credpaltest/util/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'customWidget.dart';
import 'fireMoreWidget.dart';

class LostLiftedTraining extends StatelessWidget {
  final String lost, lifted, training , month, date, exerciseDone, recentExr;
  final Function clickMore;
  const LostLiftedTraining({this.lost, this.lifted, this.training, this.month, this.date, this.exerciseDone, this.recentExr, this.clickMore});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircularWid(
              size: size,
              color: Color(0xff52385A),
              iconData: Icons.all_inclusive,
              colorTexture: rbIconColorI,
            ),
            CircularWid(
              size: size,
              color: Color(0xff3B3B8E),
              colorTexture: rbIconColorII,
              iconData: Icons.baby_changing_station,
            ),
            CircularWid(
              size: size,
              color: Color(0xff223E84),
              iconData: Icons.access_time_filled,
              colorTexture: rbIconColorIII,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: TextRichCustom(
                firstVal: lost,
                secondVal: 'ca',
                fontWeight: FontWeight.w500,
                size: 15.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: TextRichCustom(
                firstVal:lifted,
                secondVal: 'kg',
                fontWeight: FontWeight.w500,
                size: 15.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: TextRichCustom(
                firstVal:training,
                secondVal: 'month',
                fontWeight: FontWeight.w500,
                size: 15.sp,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SameTextFormat(
              textFormat: 'Lost',
            ),
            SameTextFormat(
              textFormat: 'Lifted ',
            ),
            SameTextFormat(
              textFormat: 'Training',
            ),
          ],
        ),
        HSP(
          myCustomSize: 0.06.h,
        ),
        ExerciseMonthDate(
          month: month,
          date: date,
          clickMore: clickMore,
          exerciseDone: exerciseDone,
          recentExer: recentExr,
        )
      ],
    );
  }
}
