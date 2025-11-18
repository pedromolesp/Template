class ObjectEntity {
  int? page;
  List<Movie>? results;
  int? totalPages;
  int? totalResults;

  ObjectEntity({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  List<ObjectEntity> fromJsonList(List<Map<String, dynamic>> list) {
    return list.map((item) => ObjectEntity.fromJson(item)).toList();
  }

  factory ObjectEntity.fromJson(Map<String, dynamic> json) {
    return ObjectEntity(
      page: json['page'],
      results: (json['results'] as List<dynamic>?)
          ?.map((movieJson) => Movie.fromJson(movieJson))
          .toList(),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'results': results?.map((movie) => movie.toJson()).toList(),
      'total_pages': totalPages,
      'total_results': totalResults,
    };
  }
}

class Movie {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  OriginalLanguage? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  double? voteAverage;
  int? voteCount;

  Movie({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      adult: json['adult'],
      backdropPath: json['backdrop_path'],
      genreIds: (json['genre_ids'] as List<dynamic>?)
          ?.map((id) => id as int)
          .toList(),
      id: json['id'],
      originalLanguage:
          OriginalLanguageExtension.fromString(json['original_language']),
      originalTitle: json['original_title'],
      overview: json['overview'],
      popularity: json['popularity']?.toDouble(),
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      title: json['title'],
      video: json['video'],
      voteAverage: json['vote_average']?.toDouble(),
      voteCount: json['vote_count'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage?.value,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}

enum OriginalLanguage { en, ja, zh, es, unknown }

extension OriginalLanguageExtension on OriginalLanguage {
  static OriginalLanguage fromString(String? value) {
    switch (value) {
      case 'en':
        return OriginalLanguage.en;
      case 'ja':
        return OriginalLanguage.ja;
      case 'zh':
        return OriginalLanguage.zh;
      case 'es':
        return OriginalLanguage.es;
      default:
        return OriginalLanguage.unknown;
    }
  }

  String? get value {
    switch (this) {
      case OriginalLanguage.en:
        return 'en';
      case OriginalLanguage.ja:
        return 'ja';
      case OriginalLanguage.zh:
        return 'zh';
      case OriginalLanguage.es:
        return 'es';
      default:
        return null;
    }
  }
}
