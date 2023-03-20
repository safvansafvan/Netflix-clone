import 'package:json_annotation/json_annotation.dart';


part 'new_and_hot_resp.g.dart';

@JsonSerializable()
class NewAndHotResp {
	int? page;
	List<Result>? results;
	@JsonKey(name: 'total_pages') 
	int? totalPages;
	@JsonKey(name: 'total_results') 
	int? totalResults;

	NewAndHotResp({
		this.page, 
		this.results, 
		this.totalPages, 
		this.totalResults, 
	});

	factory NewAndHotResp.fromJson(Map<String, dynamic> json) {
		return _$NewAndHotRespFromJson(json);
	}

	Map<String, dynamic> toJson() => _$NewAndHotRespToJson(this);
}



@JsonSerializable()
class Result {
	
	@JsonKey(name: 'backdrop_path') 
	String? backdropPath;

	@JsonKey(name: 'id')
	int? id;

	@JsonKey(name: 'original_language') 
	String? originalLanguage;

	@JsonKey(name: 'original_title') 
	String? originalTitle;

  @JsonKey(name: 'overview')
	String? overview;
	
	@JsonKey(name: 'poster_path') 
	String? posterPath;

	@JsonKey(name: 'release_date') 
	String? releaseDate;

  @JsonKey(name: 'title')
	String? title;
	

	Result({
		
		this.backdropPath, 

		this.id, 
		this.originalLanguage, 
		this.originalTitle, 
		this.overview, 
		
		this.posterPath, 
		this.releaseDate, 
		this.title, 
	});

	factory Result.fromJson(Map<String, dynamic> json) {
		return _$ResultFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ResultToJson(this);
}
