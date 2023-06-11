import 'package:flutter/material.dart';
import 'package:flutter_mvvm_providers_sample/models/RocketDetailsModel.dart';
import 'package:flutter_mvvm_providers_sample/models/RocketListModel.dart';
import 'package:flutter_mvvm_providers_sample/network_service/apis.dart';
import 'package:flutter_mvvm_providers_sample/network_service/response/api_response1.dart';
import '../network_service/base_api_service.dart';
import '../network_service/network_api_service.dart';
import '../network_service/response/api_response.dart';
import '../utilities/common_utilities.dart';

class RocketsListViewModel with ChangeNotifier {
  ApiResponse<RocketListModel> rocketsListData = ApiResponse.none();
  ApiResponse1<RocketDetailsModel> rocketData = ApiResponse1.none();
  final BaseApiService _apiService = NetworkApiService();

  void _setUsersResponse(ApiResponse<RocketListModel> response) {
    CommonUtilities.printMsg("setUsersResponse :: $response");
    rocketsListData = response;
    notifyListeners();
  }

  void _setRocketDetails(ApiResponse1<RocketDetailsModel> response) {
    CommonUtilities.printMsg("RocketResponse :: $response");
    rocketData = response;
    notifyListeners();
  }

  Future<ApiResponse<RocketListModel>> rocketDetails() async {
    _setUsersResponse(ApiResponse.loading());
    try {
      dynamic response = await _apiService.getResponse(Apis.getRocketsList);

      CommonUtilities.printMsg("setUsersResponse :: RES:-- $response");
      final jsonData = response
          .map<RocketListModel>((user) => RocketListModel.fromJson(user))
          .toList();
      _setUsersResponse(ApiResponse.success(jsonData));

      return ApiResponse.success(jsonData);
    } catch (e) {
      _setUsersResponse(ApiResponse.error(e.toString()));
      rethrow;
    }
  }

  Future<ApiResponse1<RocketDetailsModel>> getRocketDetails(String id) async {
    _setRocketDetails(ApiResponse1.loading());
    try {
      dynamic response =
          await _apiService.getResponse("${Apis.getRocketDetails}/$id");

      CommonUtilities.printMsg("RocketResponse :: RES:-- $response");
      final jsonData = RocketDetailsModel.fromJson(response);
      _setRocketDetails(ApiResponse1.success(jsonData));

      return ApiResponse1.success(jsonData);
    } catch (e) {
      _setRocketDetails(ApiResponse1.error(e.toString()));
      rethrow;
    }
  }
}
