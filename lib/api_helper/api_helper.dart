import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

import 'app_exception_handling.dart';


class Api_Helper {
  Future<dynamic>? getDataApi(String url,
      {Map<String, String>? mHeaders}) async {
    Uri mUri = Uri.parse(url);
    try {
      var response = await http.get(Uri.parse(url),
          headers: mHeaders ??
              {
                "Authorization":
                    "nXWH9BLpCYtVtyjDTbJB3Hf20uneSxZcYisVLVmNDV4PamGm6EeVDgZm"
              });

      return returnMyResponse(response);
    } on SocketException {
      throw FetchException(mbody: "InterNet Error");
    }
  }

  dynamic returnMyResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var mdata = jsonDecode(response.body);
        print(mdata);
        return mdata;

      case 400:
        throw BadRequestException(mbody: response.body);

      case 401:
      case 403:
      case 407:
        throw UnAuthorisedException(mbody: response.body);

      case 500:
      default:
        throw ServerException(mbody: response.body);
    }
  }
}
