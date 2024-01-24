import 'package:admin_portfolio/configs/app_constants.dart';
import 'package:admin_portfolio/configs/app_urls.dart';
import 'package:admin_portfolio/models/intro_model.dart';
import 'package:http/http.dart' as http;

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

