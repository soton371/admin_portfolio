import 'package:admin_portfolio/configs/app_constants.dart';
import 'package:admin_portfolio/configs/app_urls.dart';
import 'package:admin_portfolio/models/intro_model.dart';
import 'package:http/http.dart' as http;

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