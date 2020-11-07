import '../data/repository/meme_fetcher.dart';
import '../locator.dart';

class MemeController {
  fetchMeme() async {
  return  locator.get<MemeFetcher>().getNewMeme();
  }
}
