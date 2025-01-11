import 'package:flutter/material.dart';
import 'package:results_summary_component/res/app_colors.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              // stops: [0.0, 0.0],
              colors: [AppColors.violetBlue, AppColors.lightRoyalBlue])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "76",
            style: TextStyle(
                color: AppColors.light,
                fontFamily: "HankenExtraBold",
                fontSize: 50),
          ),
          Text(
            "of 100",
            style: TextStyle(
                color: AppColors.paleBlue,
                fontFamily: "HankenMedium",
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
