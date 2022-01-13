import 'package:credpaltest/util/constant.dart';
import 'package:credpaltest/widget/fireMoreWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDialogHeader extends StatelessWidget {
  const CustomDialogHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Color(0xff553B5E),
        radius: 30,
        child: Icon(Icons.add_to_drive, color: rbIconColorI,),
      ),
      title: Text('New Workout', style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 11.sp,
          color: Colors.white
      ),),

    );
  }
}
class CustomFromPrev extends StatelessWidget {
  const CustomFromPrev({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18),
      child: ListTile(
        leading: Text('From Previous', style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Colors.white,
        ),),
        trailing: Container(
          height: size.height*0.05.h,
          width: size.width*0.12.w,
          decoration: BoxDecoration(
            color: Color(0xff403A68),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(Icons.arrow_forward_ios,
            size: 10,
            color: Colors.white,),
        ),
      ),

    );
  }
}

class CalenderII extends StatelessWidget {
  final String month, date;
  final Color colorRay;

  const CalenderII({this.month, this.date, this.colorRay});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      height: size.height * 0.08.h,
      width: size.width * 0.12.w,
      decoration: BoxDecoration(
          color: colorRay, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Text(
            month,
            style: TextStyle(color: Color(0xffC2E4FF), fontSize: 11.sp),
          ),
          HSP(
            myCustomSize: 0.002.h,
          ),
          Text(
            date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
class CustomCloseWidget extends StatelessWidget {
  const CustomCloseWidget({
    Key key,
    this.closeWindow,
  }) : super(key: key);
  final Function closeWindow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: closeWindow,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.close,
              color: Color(0xffA8A4C4),
              size: 18,
            ),
          ),
          Text(
            'CLOSE',
            style: TextStyle(
                fontSize: 10.sp,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
class StatsMuscle extends StatelessWidget {
  const StatsMuscle({
    Key key,
   this.stats, this.muscles,
  }) : super(key: key);

  final String stats, muscles;

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              stats,
              style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            CustomDiv(size: size)
          ],
        ),
        Text(
          muscles,
          style: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w400,
              color: rbTextColor),
        ),
      ],
    );
  }
}

class ExerciseMonthDate extends StatelessWidget {
  const ExerciseMonthDate({
    Key key, this.date, this.month, this.exerciseDone, this.recentExer, this.clickMore,
  }) : super(key: key);
  final String date, month , exerciseDone, recentExer;
  final Function clickMore;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CalanderWidget(
          size: size,
          date: date,
          month: month,
        ),
        RecentExercies(
          size: size,
          exerciseDone: exerciseDone,
          recentExercise: recentExer,
        ),
        More(
          size: size,
          clickMore: () {},
        )
      ],
    );
  }
}

class CurrentWeightLeftToGain extends StatelessWidget {
  final String weight, leftToGain;

  const CurrentWeightLeftToGain({Key key, this.weight, this.leftToGain}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        WeightCustomText(
          currentWeight: weight,
        ),
        CustomDivider(size: size),
        CurrentWeight(
          firstVal: leftToGain,
        ),
      ],
    );
  }
}

class WCLeftToGain extends StatelessWidget {
  final curentWorkOut, currentWeight, leftToGain;

  const WCLeftToGain({this.curentWorkOut, this.currentWeight, this.leftToGain});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HSP(
          myCustomSize: 0.04.h,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WorkoutRate(
              rate: curentWorkOut,
            ),
            SameTextFormat(
              textFormat: 'Workouts Completed',
            ),
          ],
        ),
        HSP(
          myCustomSize: 0.04.h,
        ),
        CurrentWeightLeftToGain(
          weight: currentWeight,
          leftToGain: leftToGain,
        ),
        //
        HSP(
          myCustomSize: 0.04.h,
        ),
      ],
    );
  }
}
