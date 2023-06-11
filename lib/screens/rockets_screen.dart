import 'package:flutter/material.dart';
import 'package:flutter_mvvm_providers_sample/list_items/rockets_list_card.dart';
import 'package:flutter_mvvm_providers_sample/models/RocketListModel.dart';
import 'package:flutter_mvvm_providers_sample/network_service/response/status.dart';
import 'package:flutter_mvvm_providers_sample/utilities/common_utilities.dart';
import 'package:flutter_mvvm_providers_sample/view_models/users_list_view_model.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../utilities/constants.dart';
import '../widgets/loading.dart';

class RocketsScreen extends StatefulWidget {
  const RocketsScreen({Key? key}) : super(key: key);

  @override
  _RocketsScreenState createState() => _RocketsScreenState();
}

class _RocketsScreenState extends State<RocketsScreen> {
  RocketsListViewModel _usersListViewModel = RocketsListViewModel();
  List<RocketListModel> _rocketsList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usersListViewModel.rocketDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("SpaceX Rockets",
            style: TextStyle(
              color: Colors.blue.shade900,
            )),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ChangeNotifierProvider<RocketsListViewModel>(
          create: (BuildContext context) => _usersListViewModel,
          child: Consumer<RocketsListViewModel>(
            builder: (context, viewModel, widget) {
              switch (viewModel.rocketsListData.status) {
                case Status.LOADING:
                  CommonUtilities.printMsg("RocketsList :: LOADING");
                  return const Loading();
                case Status.ERROR:
                  CommonUtilities.printMsg(
                      "RocketsList :: ERROR${viewModel.rocketsListData.message}");
                  return Center(
                      child: Text("No Rockets found!",
                          style: kNormalTextStyle(
                              18.0, kPrimaryTextColor, "Inter", false)));
                case Status.SUCCESS:
                  CommonUtilities.printMsg("RocketsList :: COMPLETED");
                  if (viewModel.rocketsListData.data!.isEmpty) {
                    return Center(
                        child: Text("No Rockets found!",
                            style: kNormalTextStyle(
                                18.0, kPrimaryTextColor, "Inter", false)));
                  } else {
                    CommonUtilities.printMsg(
                        "RocketsList${viewModel.rocketsListData.data!.length}");
                    _rocketsList.clear();
                    _rocketsList.addAll(viewModel.rocketsListData.data!);
                    return SingleChildScrollView(child: rocketsListing(_rocketsList));
                  }
                default:
              }
              return const Loading();
            },
          ),
        ),
      ),
    );
  }

  Widget rocketsListing(List<RocketListModel> _rocketsList) {
    return Container(
      margin: const EdgeInsets.only(right: 8,left: 8,top: 10),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: _rocketsList.length,
          itemBuilder: (context, index) {
            return RocketsListCard(usersList: _rocketsList, index: index);
          }),
    );
  }
}
