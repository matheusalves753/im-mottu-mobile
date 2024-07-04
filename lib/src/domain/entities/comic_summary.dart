import 'package:equatable/equatable.dart';

class ComicSummary extends Equatable {
  final String? resourceURI;
  final String? name;

  const ComicSummary({this.resourceURI, this.name});

  @override
  List<Object?> get props => [resourceURI, name];
}
