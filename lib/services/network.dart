import 'dart:convert';

import 'package:http/http.dart';
class Network{
  Network(this.Url);
  final String Url;
Future<dynamic> getData()async{
  Response response =await get(Uri.parse(Url));
  String data = response.body;
   return jsonDecode(data);

}}