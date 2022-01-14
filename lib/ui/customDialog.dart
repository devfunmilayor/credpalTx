import 'package:credpaltest/model/wkModel.dart';
import 'package:credpaltest/util/constant.dart';
import 'package:credpaltest/widget/fireMoreWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/CustomlistedWidget.dart';
import '../widget/customWidget.dart';

class CustomPop extends StatelessWidget {
  CustomPop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<WorkOut> workoutDataList = [
      WorkOut(
          colorBk: listedColorI,
          date: '14',
          numberOfExercise: '12',
          month: 'AUG',
          typeOfExercise: 'Shoulder & Back'),
      WorkOut(
          colorBk: listedColorII,
          date: '10',
          month: 'AUG',
          numberOfExercise: '9',
          typeOfExercise: 'Strength building'),
    ];

    var size = MediaQuery.of(context).size;
    return Dialog(
      insetAnimationCurve: Curves.easeInOutExpo,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(38.0.r))),
      child: Container(
        height: size.height * 0.45,
        width: size.width*2,
        decoration: BoxDecoration(
            color: Color(0xff333059),
            borderRadius: BorderRadius.all(Radius.circular(32.0.r))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 28),
          child: Column(
            children: [
              CustomDialogHeader(),
              CustomFromPrev(size: size),
              Container(
                height: size.height * 0.13,
                // width: double.infinity,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: workoutDataList
                        .asMap()
                        .entries
                        .map((e) => ListedWidgetDateExcercise(
                              colorBk: e.value.colorBk,
                              date: e.value.date,
                              month: e.value.month,
                              numberOfExcercises: e.value.numberOfExercise,
                              typeOfExercise: e.value.typeOfExercise,
                            ))
                        .toList()),
              ),
              HSP(
                myCustomSize: 0.02.h,
              ),
              CustomCloseWidget(
                closeWindow: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

