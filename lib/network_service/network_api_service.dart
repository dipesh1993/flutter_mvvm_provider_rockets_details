import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../utilities/common_utilities.dart';
import 'app_exception.dart';
import 'base_api_service.dart';

class NetworkApiService extends BaseApiService {
  @override
  Future getResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(url), headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      });
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future postResponse(String url, Map<String, Object> jsonBody) async {
    dynamic responseJson;
    try {
      CommonUtilities.printMsg(jsonBody);
      final response =
          await http.post(Uri.parse(url), body: jsonEncode(jsonBody), headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      });
      CommonUtilities.printMsg(response.statusCode);
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future postListResponse(String url, Object jsonBody) async {
    dynamic responseJson;
    try {
      final response =
          await http.post(Uri.parse(url), body: jsonEncode(jsonBody), headers: {
        HttpHeaders.contentTypeHeader: "application/json",
      });
      if (kDebugMode) {
        print(response.statusCode);
      }
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future deleteResponse(String url) async {
    dynamic responseJson;
    try {
      final response = await http.delete(Uri.parse(url), headers: {
        HttpHeaders.contentTypeHeader: "application/json",
        //HttpHeaders.authorizationHeader : '$token',
      });
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  @override
  Future postMultipartFileResponse(String url, dynamic filepath) async {
    dynamic responseJson;
    var headers = {
      HttpHeaders.contentTypeHeader: "application/json",
    };

    try {
      if (kDebugMode) {
        print(filepath);
      }
      var response = http.MultipartRequest(
        'POST',
        Uri.parse(url),
      );
      if (kIsWeb) {
        response.headers.addAll(headers);
        Uint8List data = await filepath.readAsBytes();
        List<int> list = data.cast();
        response.files.add(http.MultipartFile.fromBytes('attachment', list,
            filename: filepath.path.toString() + filepath.name));
      } else {
        response.files
            .add(await http.MultipartFile.fromPath('attachment', filepath));
      }

      var res = await response.send();

      CommonUtilities.printMsg(res.statusCode);
      CommonUtilities.printMsg("JSONRESPONSE:--" + responseJson.toString());

      final respStr = await res.stream.bytesToString();
      responseJson = jsonDecode(respStr);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        if (kDebugMode) {
          print("JSONRESPONSE:--" + responseJson.toString());
        }
        return responseJson;
      case 400:
        throw BadRequestException(response.toString());
      case 401:
        {
          // navigate to login screen
        }
        break;
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while communication with server with status code : ${response.statusCode}');
    }
  }
}
