import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../models/posts.dart';

class ApiService{
  final dio = Dio();
  final baseURL = "https://insite.addu.edu.ph/wp-json/wp/v2/posts";
  

  Future<List<Posts>> fetchPosts() async{
    try{
      final response = await dio.get(baseURL);

      if(response.statusCode == 200){
        print(response.data);
        List<dynamic> data = response.data; 
        return data.map((json) => Posts.fromJson(json)).toList();
      }else {
        throw Exception('Failed to load posts. Status code: ${response.statusCode}');
      }
    }catch(e){
      throw Exception('Error fetching posts: $e');
    }
  }
}