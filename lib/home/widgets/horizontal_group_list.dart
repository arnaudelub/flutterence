import 'package:flutter/material.dart';
import 'package:flutterence/utils/theme/style.dart';
import 'package:flutterence/utils/utils.dart';

const double containerSize = 100.0;

class HorizontalGroupList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: assignHeight(context: context, fraction: 0.2),
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(6, (int i) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: smallSpacer,
              ),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(
                      Radius.circular(containerBorderRadius),
                    ),
                  ),
                  height: containerSize,
                  width: containerSize,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                      height: containerSize,
                      width: containerSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(containerBorderRadius),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [AppColors.black, Colors.transparent],
                            stops: [0, 0.6],
                          ))),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: smallSpacer),
                      child: Text(
                        'A group test guay',
                        textAlign: TextAlign.center,
                        style: Styles.bodyTextStyle(
                            fontSize: fontS,
                            color: AppColors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ]),
            );
          })),
    );
  }
}
