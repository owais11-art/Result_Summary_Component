import 'package:flutter/material.dart';
import 'package:results_summary_component/res/app_colors.dart';
import 'package:results_summary_component/widgets/score.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 40),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [AppColors.lightSlateBlue, AppColors.lightRoyalBlue]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30))),
      child: Column(
        children: [
          Text(
            "Your Result",
            style: TextStyle(
                color: AppColors.paleBlue,
                fontFamily: "HankenBold",
                fontSize: 18),
          ),
          SizedBox(
            height: 25,
          ),
          Score(),
          SizedBox(
            height: 30,
          ),
          Text(
            "Great",
            style: TextStyle(
                color: AppColors.light, fontFamily: "HankenBold", fontSize: 26),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "You scored higher than 65% of the people who have taken these tests.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.paleBlue,
                fontFamily: "HankenMedium",
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
