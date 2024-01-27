import 'dart:convert';

import 'package:admin_portfolio/configs/app_constants.dart';
import 'package:admin_portfolio/configs/app_urls.dart';
import 'package:admin_portfolio/models/intro_model.dart';
import 'package:http/http.dart' as http;


//for add
Future<bool> addIntroService(Map<String, String> payload)async{
  logger.d("call addIntroService");
  final Uri url = Uri.parse(AppUrls.addIntro);
  try{
    final jsonPayload = jsonEncode(payload);
    final service = await http.post(url, body: jsonPayload, headers: header); //check header remove
    final response = introModelFromJson(service.body);
    return response.isSuccess!;
  }catch(e){
    logger.e("addIntroService e: $e");
    return false;
  }
}

//for fetch
Future<IntroData?> fetchIntroService()async{
  logger.d("call fetchIntroService");
  final Uri url = Uri.parse(AppUrls.getIntro);
  try{
    final service = await http.get(url, headers: header); //check header remove
    final response = introModelFromJson(service.body);
    return response.data;
  }catch(e){
    logger.e("fetchIntroService e: $e");
    return null;
  }
}


//for delete
Future<bool> deleteIntroService()async{
  logger.d("call deleteIntroService");
  final Uri url = Uri.parse(AppUrls.deleteIntro);
  try{
    final service = await http.delete(url, headers: header); //check header remove
    final response = introModelFromJson(service.body);
    return response.isSuccess!;
  }catch(e){
    logger.e("deleteIntroService e: $e");
    return false;
  }
}
