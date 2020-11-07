import 'package:get_it/get_it.dart';
import 'domain/meme_controller.dart';
import 'data/repository/meme_fetcher.dart';

final locator = GetIt.instance;

void setUp() {
  locator.registerLazySingleton<MemeFetcher>(() => MemeFetcher());
  locator.registerLazySingleton<MemeController>(() => MemeController());
}
