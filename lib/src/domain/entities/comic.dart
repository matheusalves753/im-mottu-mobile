import 'package:equatable/equatable.dart';

class Comic extends Equatable {
  final int? id;
  final String? title;

  const Comic({
    this.id,
    this.title,
  });

  @override
  List<Object?> get props => [
        id,
        title,
      ];
}
