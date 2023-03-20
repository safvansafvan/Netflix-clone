import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'hot_and_new_res.g.dart';

@JsonSerializable()
class HotAndNewRes {
	int? page;
	List<Result>? results;
	@JsonKey(name: 'total_pages') 
	int? totalPages;
	@JsonKey(name: 'total_results') 
	int? totalResults;

	HotAndNewRes({
		this.page, 
		this.results, 
		this.totalPages, 
		this.totalResults, 
	});

	factory HotAndNewRes.fromJson(Map<String, dynamic> json) {
		return _$HotAndNewResFromJson(json);
	}

	Map<String, dynamic> toJson() => _$HotAndNewResToJson(this);
}
