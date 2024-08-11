import 'package:flutter/material.dart';

Widget teamStats(String team, String logoUrl, String teamName){
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: TextStyle(
            fontSize: 20
          ),
        ),
        SizedBox(height: 10,),

        Expanded(
          child: Image.network(
            logoUrl,
            width: 54,
          ),
        ),
        Text(
          teamName,
          style: TextStyle(
            fontSize: 18
          ),
        ),
        


      ],
    ),
  );
}