import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_providers_sample/models/RocketDetailsModel.dart';
import 'package:flutter_mvvm_providers_sample/network_service/response/status.dart';
import 'package:flutter_mvvm_providers_sample/utilities/common_utilities.dart';
import 'package:flutter_mvvm_providers_sample/view_models/users_list_view_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utilities/constants.dart';
import '../widgets/loading.dart';

class RocketDetailsScreen extends StatefulWidget {
  final String id;
  final String title;

  RocketDetailsScreen({required this.id, required this.title, Key? key})
      : super(key: key);

  @override
  _RocketDetailsScreenState createState() => _RocketDetailsScreenState();
}

class _RocketDetailsScreenState extends State<RocketDetailsScreen> {
  RocketsListViewModel _usersListViewModel = RocketsListViewModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _usersListViewModel.getRocketDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                LineAwesomeIcons.angle_left,
                color: Colors.blue.shade900,
              )),
          title: Text(widget.title,
              style: TextStyle(
                color: Colors.blue.shade900,
              )),
          centerTitle: true,
        ),
        body: ChangeNotifierProvider<RocketsListViewModel>(
          create: (BuildContext context) => _usersListViewModel,
          child: Consumer<RocketsListViewModel>(
            builder: (context, viewModel, widget) {
              switch (viewModel.rocketData.status) {
                case Status.LOADING:
                  CommonUtilities.printMsg("RocketsList :: LOADING");
                  return const Loading();
                case Status.ERROR:
                  CommonUtilities.printMsg(
                      "RocketsList :: ERROR${viewModel.rocketData.message}");
                  return Center(
                      child: Text("No Users found!",
                          style: kNormalTextStyle(
                              18.0, kPrimaryTextColor, "Inter", false)));
                case Status.SUCCESS:
                  CommonUtilities.printMsg("RocketsList :: COMPLETED");
                  if (viewModel.rocketData.data == null) {
                    return Center(
                        child: Text("No Users found!",
                            style: kNormalTextStyle(
                                18.0, kPrimaryTextColor, "Inter", false)));
                  } else {
                    CommonUtilities.printMsg(
                        "UsersList${viewModel.rocketData.data!}");
                    RocketDetailsModel? rocketDetails =
                        viewModel.rocketData.data!;

                    return SafeArea(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              CarouselSlider(
                                options: CarouselOptions(
                                    height: 180.0,
                                    enlargeCenterPage: true,
                                    onPageChanged: (position, reason) {},
                                    enableInfiniteScroll: false,
                                    autoPlay: true,
                                    viewportFraction: 0.74),
                                items: viewModel.rocketData.data!.flickrImages!
                                    .map<Widget>((i) {
                                  return Builder(
                                    builder: (BuildContext context) {
                                      return Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: NetworkImage(i),
                                                  fit: BoxFit.cover)));
                                    },
                                  );
                                }).toList(),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  textDisplay(
                                      "Active",
                                      rocketDetails.active! ? "Yes" : "No",
                                      2,
                                      context,
                                      width / 25,
                                      width / 25),
                                  textDisplay(
                                      "Cost Per Launch",
                                      rocketDetails.costPerLaunch!.toString(),
                                      2,
                                      context,
                                      width / 25,
                                      width / 25),
                                ],
                              ),
                              textDisplay(
                                  "Description",
                                  rocketDetails.description!.toString(),
                                  1,
                                  context,
                                  width / 20,
                                  width / 20),
                              textDisplay(
                                  "Success Rate Percent",
                                  "${rocketDetails.successRatePct!} %",
                                  1,
                                  context,
                                  width / 20,
                                  width / 20),
                              textDisplay(
                                  "Height & Diameter in Feet",
                                  "${rocketDetails.height!.feet} / ${rocketDetails.diameter!.feet}",
                                  1,
                                  context,
                                  width / 20,
                                  width / 20),
                              textDisplay(
                                  "Wikipedia Link",
                                  rocketDetails.wikipedia!.toString(),
                                  1,
                                  context,
                                  width / 20,
                                  width / 20),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    );
                  }
                default:
              }
              return const Loading();
            },
          ),
        ));
  }

  Widget textDisplay(String value1, String value2, int i, BuildContext context,
      double paddingLeft, double paddingRight) {
    ScreenUtil.init(context);
    if (i == 1) {
      return Card(
        elevation: 10,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.fromLTRB(paddingLeft, 8, paddingRight, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value1,
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.sp),
                textAlign: TextAlign.left,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: value2.contains("wikipedia")
                    ? ElevatedButton(
                        onPressed: () {
                          _launchUrl(value2);
                        },
                        child: Text(value2),
                      )
                    : Text(
                        value2,
                        style: TextStyle(
                            color: Colors.grey.shade800),
                        textAlign: TextAlign.left,
                      ),
              ),
            ],
          ),
        ),
      );
    } else if (i == 2) {
      return Card(
        elevation: 10,
        child: Container(
          padding: EdgeInsets.fromLTRB(paddingLeft, 8, paddingRight, 8),
          width: MediaQuery.of(context).size.width / 2 - 17,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                value1,
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
                textAlign: TextAlign.left,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Text(
                  value2,
                  style: TextStyle(color: Colors.grey.shade800),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Container();
  }
}

Future<void> _launchUrl(String url) async {
  final Uri _url = Uri.parse(url);
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
