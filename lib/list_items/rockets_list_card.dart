import 'package:flutter/material.dart';
import 'package:flutter_mvvm_providers_sample/models/RocketListModel.dart';
import 'package:flutter_mvvm_providers_sample/screens/rocket_details_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RocketsListCard extends StatefulWidget {
  final List<RocketListModel> usersList;
  final int index;

  const RocketsListCard(
      {Key? key, required this.usersList, required this.index})
      : super(key: key);

  @override
  _UsersListCardState createState() => _UsersListCardState();
}

class _UsersListCardState extends State<RocketsListCard> {
  @override
  Widget build(BuildContext context) {
    RocketListModel userInfo = widget.usersList.elementAt(widget.index);
    ScreenUtil.init(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RocketDetailsScreen(
                id: userInfo.id!,
                title: userInfo.name!,
              ),
            ),
          );
          final scaffold = ScaffoldMessenger.of(context);
          scaffold.showSnackBar(
            SnackBar(
              content: const Text('Welcome to SpaceX Rockets'),
              action: SnackBarAction(
                  label: 'Hide', onPressed: scaffold.hideCurrentSnackBar),
            ),
          );
        },
        child: Card(
          elevation: 10,
          child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                padding: const EdgeInsets.only(right: 8.0),
                decoration: const BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black26))),
                child: SizedBox(
                  height: width / 5,
                  width: width / 5,
                  child: Image.network(
                    userInfo.flickrImages!.first,
                    fit: BoxFit.cover,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                ),
              ),
              title: Column(
                children: [
                  Row(
                    children: [
                      Text("Name : ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold)),
                      Text(
                        userInfo.name!,
                        style: TextStyle(
                            fontSize: 14.sp, color: Colors.grey.shade800),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Engines Count : ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold)),
                      Text(userInfo.engines!.number.toString(),
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 14.sp)),
                    ],
                  ),
                ],
              ),
              subtitle: Row(
                children: <Widget>[
                  Text("Country : ",
                      style: TextStyle(
                          color: Colors.blue.shade900,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold)),
                  Flexible(
                      child: Text(userInfo.country.toString(),
                          style: TextStyle(
                              color: Colors.grey.shade800, fontSize: 14.sp)))
                ],
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.blue.shade900, size: 30.0)),
        ));
  }
}
