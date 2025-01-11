import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:results_summary_component/res/app_colors.dart';

class Summary extends StatelessWidget {
  const Summary({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> summaryList = [
      {
        "text": "Reaction",
        "icon": "assets/images/icon-reaction.svg",
        "score": "80",
        "bg": AppColors.lightRedBg,
        "color": AppColors.lightRed
      },
      {
        "text": "Memory",
        "icon": "assets/images/icon-memory.svg",
        "score": "92",
        "bg": AppColors.orangeYellowBg,
        "color": AppColors.orangeYellow
      },
      {
        "text": "Verbal",
        "icon": "assets/images/icon-verbal.svg",
        "score": "61",
        "bg": AppColors.greenTealBg,
        "color": AppColors.greenTeal
      },
      {
        "text": "Visual",
        "icon": "assets/images/icon-visual.svg",
        "score": "72",
        "bg": AppColors.cobaltBlueBg,
        "color": AppColors.cobaltBlue
      }
    ];
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 20,
        children: [
          Text(
            "Summary",
            style: TextStyle(
                color: AppColors.darkGrayBlue,
                fontFamily: "HankenBold",
                fontSize: 24),
          ),
          Column(
            spacing: 20,
            children: summaryList
                .map((Map<String, dynamic> summary) => Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: summary["bg"],
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(summary["icon"]),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                summary["text"],
                                style: TextStyle(
                                    color: summary["color"],
                                    fontFamily: "HankenBold",
                                    fontSize: 18),
                              )),
                              RichText(
                                text: TextSpan(
                                    text: summary["score"],
                                    style: TextStyle(
                                        color: AppColors.darkGrayBlue,
                                        fontFamily: "HankenBold",
                                        fontSize: 18),
                                    children: [
                                      TextSpan(
                                          text: " / 100",
                                          style: TextStyle(
                                              color: AppColors.darkGrayBlue
                                                  .withValues(alpha: 0.5),
                                              fontFamily: "HankenBold",
                                              fontSize: 18))
                                    ]),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8)),
                                border: Border(
                                    top: BorderSide(color: summary["color"]),
                                    left: BorderSide(color: summary["color"]))),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8)),
                                border: Border(
                                    top: BorderSide(color: summary["color"]),
                                    right:
                                        BorderSide(color: summary["color"]))),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8)),
                                border: Border(
                                    bottom: BorderSide(color: summary["color"]),
                                    right:
                                        BorderSide(color: summary["color"]))),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8)),
                                border: Border(
                                    bottom: BorderSide(color: summary["color"]),
                                    left: BorderSide(color: summary["color"]))),
                          ),
                        )
                      ],
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
