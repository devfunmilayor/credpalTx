import 'package:credpaltest/util/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';


class FireMoreLight extends StatelessWidget {
  const FireMoreLight({
    Key key,
    @required this.size, this.checkMoreContent,
  }) : super(key: key);

  final Size size;
  final Function checkMoreContent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: checkMoreContent,
      child: Container(
        height: size.height*0.07.h,
        width: size.width*0.12.w,

        decoration: BoxDecoration(
            color: rBTNColorV,
            borderRadius: BorderRadius.circular(10.r)
        ),
        child: Icon(Icons.rotate_right,
        color: Colors.white,),
      ),
    );
  }
}

class HSP extends StatelessWidget {
  const HSP({
    Key key, this.myCustomSize,
  }) : super(key: key);

  final double myCustomSize;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * myCustomSize.h,
    );
  }
}
class TextRichCustom extends StatelessWidget {
  const TextRichCustom({
    this.firstVal, this.size, this.fontWeight, this.secondVal,
  });

  final String firstVal, secondVal;
  final double size ;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstVal,
        style: TextStyle(
            fontWeight: fontWeight,
            color: Colors.white,
            fontSize: size.sp),
        children: [
          TextSpan(
            text: secondVal,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
class HeaderIntro extends StatelessWidget {
  const HeaderIntro({
    Key key,
    @required this.userName,
    @required this.size, this.checkMoreContent,
  }) : super(key: key);

  final String userName;
  final Size size;
  final Function checkMoreContent;

  @override
  Widget build(BuildContext context) {

    return ListTile(
      leading: CircleAvatar(
        backgroundColor: rBTNColorIX,
        radius: 30,

      ),
      title: Text(
        'Hello $userName',
        style: TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.white,
            fontSize: 11.sp),
      ),
      trailing: FireMoreLight(size: size ,
      checkMoreContent: checkMoreContent,),
    );
  }
}
class CustomDiv extends StatelessWidget {
  const CustomDiv({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: size.height * 0.003.h,
      width: size.width * 0.05.w,
      color: rBTNColor,
    );
  }
}

class SameTextFormat extends StatelessWidget {
  const SameTextFormat({
    Key key, this.textFormat,
  }) : super(key: key);
  final String textFormat;

  @override
  Widget build(BuildContext context) {
    return Text(
      textFormat,
      style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w300,
          color: Color(0xff938EB0)),
    );
  }
}

class WeightCustomText extends StatelessWidget {
  const WeightCustomText({Key key, this.currentWeight}) : super(key: key);
  final String currentWeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextRichCustom(
          firstVal: currentWeight,
          secondVal: 'kg',
          fontWeight: FontWeight.w500,
          size: 30.sp,
        ),
        HSP(
          myCustomSize: 0.005.h,
        ),
        SameTextFormat(
          textFormat: 'Current Weight',
        ),
      ],
    );
  }
}


class WorkoutRate extends StatelessWidget {
  const WorkoutRate({
    Key key, this.rate,
  }) : super(key: key);
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Text(
      rate,
      style: TextStyle(
          fontSize: 50.sp,
          fontWeight: FontWeight.w700,
          color: Colors.white),
    );
  }
}

class CurrentWeight extends StatelessWidget {
  const CurrentWeight({
    this.firstVal,
  });
  final String firstVal;


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        TextRichCustom(
          firstVal: firstVal,
          secondVal: 'kg',
          fontWeight: FontWeight.w500,
          size: 20.sp,
        ),

        CustomMeasure(size: size),

        SameTextFormat(
          textFormat: 'Left to Gain',
        ),
      ],
    );
  }
}

class CustomMeasure extends StatelessWidget {
  const CustomMeasure({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            height: size.height*0.003.h,
            width: size.width*0.1.w,
            color: Color(0xffFE6C20),
          ),Container(
            height: size.height*0.003.h,
            width: size.width*0.08.w,
            color: Color(0xff4A4768),
          ),

        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.07.h,
      color: Color(0xff938EB0),
      width: size.width * 0.0015.w,
    );
  }
}

class CircularWid extends StatelessWidget {
  const CircularWid({
    @required this.size,
    this.color, this.colorTexture, this.iconData,
  });

  final Size size;
  final Color color,colorTexture;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.06.h,
      width: size.width * 0.2.w,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Icon(iconData ,
      color: colorTexture,),
    );
  }
}
class CalanderWidget extends StatelessWidget {
  const CalanderWidget({
    Key key,
    @required this.size,
    this.month,
    this.date,
  }) : super(key: key);

  final Size size;
  final String month, date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.h),
      height: size.height * 0.09.h,
      width: size.width * 0.15.w,
      decoration: BoxDecoration(
          color: rBTNColorIV, borderRadius: BorderRadius.circular(15.r)),
      child: Column(
        children: [
          Text(
            month,
            style: TextStyle(
              color: Color(0xffC2E4FF),
            ),
          ),
          HSP(
            myCustomSize: 0.004.h,
          ),
          Text(
            date,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
class CustomDash extends StatelessWidget {
  const CustomDash({
    Key key,
    @required this.size, this.color,
  }) : super(key: key);

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.5.h),
      height: size.height*0.004.h,
      width: size.width*0.05.w,
      color: color,
    );
  }
}
class MeasureRate extends StatelessWidget {
  const MeasureRate({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomDash(
          size: size,
          color: rBTNColorV,
        ),
        CustomDash(
          size: size,
          color: rBTNColorVI,
        ),
        CustomDash(
          size: size,
          color: rBTNColorIV,
        ),
      ],
    );
  }
}
class RecentExercies extends StatelessWidget {
  const RecentExercies({
    Key key,
    @required this.size,
    this.recentExercise,
    this.exerciseDone,
  }) : super(key: key);

  final Size size;
  final String recentExercise, exerciseDone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      height: size.height * 0.067.h,
      width: size.width * 0.46.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MeasureRate(size: size),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0.h),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Recent: $recentExercise',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '$exerciseDone Exercises Done',
              style: TextStyle(
                color: Color(0xff938EB0),
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class More extends StatelessWidget {
  const More({
    Key key,
    @required this.size, this.clickMore,
  }) : super(key: key);

  final Size size;
  final Function clickMore;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: clickMore,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        height: size.height * 0.1.h,
        width: size.width * 0.13.w,
        decoration: BoxDecoration(
          color: Color(0xff48456F),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Icon(Icons.arrow_forward_ios, color: Colors.white,
          size: 18,),
      ),
    );
  }
}
