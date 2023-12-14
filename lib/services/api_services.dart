import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:random_users_api_2/model/model.dart';
import 'package:dio/dio.dart';

class ApiServicesProvider extends ChangeNotifier {
  Dio dio = Dio();
    List<Model> useres=[];
     fetchUsers()async{
    const url="https://randomuser.me/api/?results=10";
    final response = await dio.get(url);
    try {
      if (response.statusCode==200) {
        Map data = response.data;
        List results = data["results"];
        useres = results.map((data) => Model.fromJson(data) ).toList();
        notifyListeners();
      }else{
        throw Exception("server error");
      }
    } catch (e) {
      throw Exception(e);
    }


  }
  
}