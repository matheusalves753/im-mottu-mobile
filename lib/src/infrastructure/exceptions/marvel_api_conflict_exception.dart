import 'package:im_mottu_mobile/src/infrastructure/exceptions/marvel_api_exception.dart';

class MarvelApiConflictException extends MarvelApiException {
  MarvelApiConflictException(super.message) : super(code: 409);
}
