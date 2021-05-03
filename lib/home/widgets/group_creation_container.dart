import 'package:flutter/material.dart';
import 'package:flutterence/utils/theme/style.dart';
import 'package:flutterence/utils/utils.dart';

class GroupCreationContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("Go to Group creation page"),
      child: Container(
        color: AppColors.flutterblue,
        height: assignWidth(context: context, fraction: 0.18),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(child: Icon(Icons.add, color: Colors.white)),
            Expanded(
              flex: 5,
              child: Text('Add a new group',
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.left),
            ),
            Expanded(
              child: Icon(Icons.chevron_right, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
