import 'dart:convert';

class SearchInfo {
  final int? totalHits;
  final String? suggestion;
  final String? suggestionsnippet;
  
  const SearchInfo({
    this.totalHits,
    this.suggestion,
    this.suggestionsnippet,
  });

  SearchInfo copyWith({
    int? totalHits,
    String? suggestion,
    String? suggestionsnippet,
  }) {
    return SearchInfo(
      totalHits: totalHits ?? this.totalHits,
      suggestion: suggestion ?? this.suggestion,
      suggestionsnippet: suggestionsnippet ?? this.suggestionsnippet,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalhits': totalHits,
      'suggestion': suggestion,
      'suggestionsnippet': suggestionsnippet,
    };
  }

  factory SearchInfo.fromMap(Map<String, dynamic> map) {
    return SearchInfo(
      totalHits: map['totalHits'],
      suggestion: map['suggestion'],
      suggestionsnippet: map['suggestionsnippet'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchInfo.fromJson(String source) => SearchInfo.fromMap(json.decode(source));

  @override
  String toString() => 'SearchInfo(totalHits: $totalHits, suggestion: $suggestion, suggestionsnippet: $suggestionsnippet)';
}