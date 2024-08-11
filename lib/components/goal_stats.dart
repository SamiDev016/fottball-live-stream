import 'package:flutter/material.dart';

Widget goalStats(int expandedTime, int homeGoal, int awayGoal) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "${expandedTime}",
          style: TextStyle(
            fontSize: 30
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "${homeGoal} - ${awayGoal}",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 36,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
