import 'package:credpaltest/util/animateDilago.dart';
import 'package:credpaltest/util/constant.dart';
import 'package:credpaltest/widget/fireMoreWidget.dart';
import 'package:credpaltest/widget/lostLiftedTraining.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import 'customDialog.dart';
import '../widget/customWidget.dart';

class DashBoard extends StatefulWidget {
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  _openDialogBoxFromLeft() {
    return showGeneralDialog(
      context: context,
      barrierLabel: '',
      barrierDismissible: true,
      transitionDuration: Duration(milliseconds: 500),
      transitionBuilder: (context, _animation, _secondaryAnimation, _child) {
        return Animate.fromTop(_animation, _secondaryAnimation, _child);
      },
      pageBuilder: (_animation, _secondaryAnimation, _child) {
        return CustomPop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String userName = 'Funmi';
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: secondaryColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w ,vertical: 20.h),
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [
              HeaderIntro(
                userName: userName,
                size: size,
                checkMoreContent: () => _openDialogBoxFromLeft(),
              ),
              SizedBox(
                height: size.height * 0.04.h,
              ),
              StatsMuscle(
                muscles: 'Muscles',
                stats: 'Stats',
              ),
              WCLeftToGain(
                leftToGain: '7.6',
                currentWeight: '72.4',
                curentWorkOut: '58',
              ),
              LostLiftedTraining(
                lost: '12.6k ',
                lifted: '270 k ',
                training: '5 ',
                exerciseDone: '8',
                date: '17',
                month: 'AUG',
                recentExr: 'Chest & Legs',
                clickMore: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
