import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../domain/model/meme.dart';

class MemeFetcher {
  Future<Meme> getNewMeme() async {
    http.Response response = await http.get('https://some-random-api.ml/meme');
    Map<String, dynamic> newMemeJson = jsonDecode(response.body);
    return Meme.fromJson(newMemeJson);
  }
}
