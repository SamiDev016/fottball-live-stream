import 'package:http/http.dart';

class FottballApi{
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";

  static const api_key= "dd329289bfafea538a8d646552717460";

  static const header = {
     'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': api_key
  };






}