import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:football_app/data/football_model.dart';
import 'package:http/http.dart';

class FottballApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";

  static const api_key = "dd329289bfafea538a8d646552717460";

  static const header = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_key
  };

  Future<List<SoccerMatch>> getAllMatches() async {
    Uri uri = await Uri.parse(apiUrl);
    Response res = await get(uri, headers: header);

    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchesList = body["response"];

      print("api service ${body}");

      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();

      return matches;
    } else {
      return getAllMatches();
    }
  }
}
