import 'package:flutter/material.dart';
import 'package:flutterence/utils/utils.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.iconAsset})
      : super(key: key);
  final GestureTapCallback onPressed;
  final Image iconAsset;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: assignWidth(context: context, fraction: 0.6),
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            textStyle: Styles.bodyTextStyle().copyWith(
                fontSize: MediaQuery.of(context).isSmallPhone ? fontS : fontM),
            primary: Colors.white,
            onPrimary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonBorderRadius),
            ),
          ),
          onPressed: onPressed,
          icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: smallSpacer),
              child: iconAsset),
          label: Align(
            alignment: Alignment.centerLeft,
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
