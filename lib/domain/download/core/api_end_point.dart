import 'package:netflix_npp/core/strings.dart';
import 'package:netflix_npp/infrastructor/api_key.dart';

class ApiEndPoint {
  static const downloads = "$cbaseUrl/trending/all/day?api_key=$apikey";

  static const search = "$cbaseUrl/search/movie?api_key=$apikey";

  static const hotAndNewMovie='$cbaseUrl/discover/movie?api_key=$apikey&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&with_watch_monetization_types=flatrate#';

  static const hotAndNewTv='$cbaseUrl/discover/tv?api_key=$apikey&language=en-US&sort_by=popularity.desc&page=1&timezone=America%2FNew_York&include_null_first_air_dates=false&with_watch_monetization_types=flatrate&with_status=0&with_type=0';
}
