class MarvelApiException implements Exception {
  final String message;
  final int? code;

  MarvelApiException(this.message, {this.code});

  @override
  String toString() => 'MarvelApiException(code: $code, message: $message)';
}
