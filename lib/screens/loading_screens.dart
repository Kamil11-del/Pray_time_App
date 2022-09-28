
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pray_time_app/screens/location_screen.dart';
import 'package:pray_time_app/services/location.dart';
import 'package:pray_time_app/services/network.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  var mylatitude;
  var mylongitude;
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location getlocation = Location();
    var location = await getlocation.getCurrentLocation();
    mylatitude=location.latitude;
    mylongitude=location.longitude;
    Network network =Network('http://api.aladhan.com/v1/calendar?latitude=$mylatitude&longitude=$mylongitude&method=2&month=4&year=2017');
    var decodeData= await network.getData();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(praytimeData: decodeData,);
    }),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SpinKitCircle(
              color: Colors.blue,
              size: 100.0,
            ),
          ),
          Text(
            'Check Pray Time',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
