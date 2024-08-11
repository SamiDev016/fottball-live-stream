import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_app/components/goal_stats.dart';
import 'package:football_app/components/match_tile.dart';
import 'package:football_app/components/team_stats.dart';
import 'package:football_app/data/football_model.dart';

Widget PageBody(List<SoccerMatch> allMatches){
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18,vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                teamStats("Local Team", allMatches[0].home.logoUrl, allMatches[0].home.name),
                goalStats(allMatches[0].fixture.status.elapsedTime, allMatches[0].goal.home, allMatches[0].goal.away),
                teamStats("Visitor Team", allMatches[0].away.logoUrl, allMatches[0].away.name),
              ],
            ),
          ),
        ),
      ),

      Expanded(
        flex: 5,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade500,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "MATCHES",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allMatches.length,
                    itemBuilder: (context, index) {
                      return matchTile(allMatches[index]);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}