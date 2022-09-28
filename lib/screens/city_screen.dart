import 'package:flutter/material.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({Key? key}) : super(key: key);

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('imajes/pray2.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: Icon(Icons.arrow_back_ios,size: 40,))),
              Opacity(
                opacity: 0.8,
                child: Container(
                  margin: EdgeInsets.only(top: 100),

                  width: 300,
                  color: Colors.brown[400],
                  child: TextField(
                    onChanged: (value){
                      cityName=value;
                    },
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.white,),
                      hintText: ' Enter city Name',
                      hintStyle: TextStyle(color: Colors.white70),

                    ),
                    cursorColor: Colors.black,
                    cursorWidth: 2.0,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(cityName);
                  },
                  child: Text(
                    'Get Time',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color: Colors.brown),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
