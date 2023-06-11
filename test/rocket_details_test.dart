

import 'package:flutter_mvvm_providers_sample/network_service/response/status.dart';
import 'package:flutter_mvvm_providers_sample/view_models/users_list_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Status.LOADING should be displayed or else Status.SUCCESS', () {
    final rocketList = RocketsListViewModel();
    rocketList.rocketDetails();

    expect(rocketList.rocketsListData.status, Status.LOADING);
  });
}