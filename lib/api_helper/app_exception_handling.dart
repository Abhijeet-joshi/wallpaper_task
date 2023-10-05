class AppException_Handling implements Exception {
  String title;
  String body;

  AppException_Handling({required this.body, required this.title});

  String toString() {
    return "$title: $body";
  }
}

class FetchException extends AppException_Handling {
  FetchException({required String mbody})
      : super(title: "Data Communication Error", body: mbody);
}

class UnAuthorisedException extends AppException_Handling {
  UnAuthorisedException({required String mbody})
      : super(title: "UnAuthorised Access Error", body: mbody);
}

class InvalidInputException extends AppException_Handling {
  InvalidInputException({required String mbody})
      : super(title: 'InvalidInputException', body: mbody);
}

class ServerException extends AppException_Handling {
  ServerException({required String mbody})
      : super(title: "Server Error", body: mbody);
}

class BadRequestException extends AppException_Handling {
  BadRequestException({required String mbody})
      : super(title: "Invalid Request Error", body: mbody);
}
