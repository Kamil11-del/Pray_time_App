import 'package:flutter/material.dart';
import 'package:pray_time_app/screens/city_screen.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({required this.praytimeData, Key? key}) : super(key: key);
  var praytimeData;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

@override
  initState(){
  super.initState();
  dataPray(widget.praytimeData);
}
  var fajr;
  var dhuhr;
  var asr;
  var maghrib;
  var isha;

  dataPray(dynamic praytimeData) {
    setState(() {
      fajr = praytimeData['data'][0]['timings']['Fajr'];
      dhuhr = praytimeData['data'][0]['timings']['Dhuhr'];
      asr = praytimeData['data'][0]['timings']['Asr'];
      maghrib = praytimeData['data'][0]['timings']['Maghrib'];
      isha = praytimeData['data'][0]['timings']['Isha'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pray Time'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('imajes/pray.jpg'),
          fit: BoxFit.fill,
        )),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed:(){}, icon: Icon(Icons.near_me,color: Colors.white,size: 40,),),
                IconButton(onPressed:(){
                 var cityName= Navigator.push(context, MaterialPageRoute(builder: (context)=>CityScreen(),),);
                }, icon: Icon(Icons.location_city,color: Colors.white,size: 40,),),

              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8.0, right: 10.0),
              height: 60,
              width: 340,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fajr',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  Text(
                    '$fajr',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8.0, right: 10.0),
              height: 60,
              width: 340,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Dhuhar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  Text(
                    '$dhuhr',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8.0, right: 10.0),
              height: 60,
              width: 340,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Asar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  Text(
                    '$asr',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8.0, right: 10.0),
              height: 60,
              width: 340,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Maghrib',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  Text(
                    '$maghrib',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 8.0, right: 10.0),
              height: 60,
              width: 340,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Isha',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  Text(
                    '$isha',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
