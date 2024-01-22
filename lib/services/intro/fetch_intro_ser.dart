import 'package:admin_portfolio/configs/app_urls.dart';
import 'package:admin_portfolio/models/intro_model.dart';

Future<IntroModel> fetchIntroService()async{
  final Uri url = Uri.parse(AppUrls.getIntro);
  final introModel = introModelFromJson('jsonString');
  return introModel;
}