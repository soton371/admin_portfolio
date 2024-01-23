import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/services/intro/fetch_intro_ser.dart';
import 'package:admin_portfolio/widgets/app_button.dart';
import 'package:admin_portfolio/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  TextEditingController nameCon = TextEditingController();
  TextEditingController whoCon = TextEditingController();
  TextEditingController introOfNameCon = TextEditingController();
  TextEditingController bioCon = TextEditingController();

  Future<void> getData()async{
    final data = await fetchIntroService();
    nameCon = TextEditingController(text: data?.name);
    whoCon = TextEditingController(text: data?.whoAreYou);
    introOfNameCon = TextEditingController(text: data?.introOfName);
    bioCon = TextEditingController(text: data?.shortBio);
    setState(() {
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        title: const Text("Intro"),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSizes.bodyPadding),
        children: [
          Card(
            surfaceTintColor: AppColors.background,
            elevation: 0.2,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.bodyPadding),
              child: Column(
                children: [
                  AppTextField(label: "Intro of Name", hint: "Enter your intro of name",controller: introOfNameCon,),
                  const SizedBox(
                    height: AppSizes.bodyPadding,
                  ),
                  AppTextField(label: "Name", hint: "Enter your name", controller: nameCon,),
                  const SizedBox(
                    height: AppSizes.bodyPadding,
                  ),
                  AppTextField(label: "Who are you", hint: "Enter about you",controller: whoCon,),
                  const SizedBox(
                    height: AppSizes.bodyPadding,
                  ),
                  AppTextField(label: "Short Bio", hint: "Enter your short bio",maxLines: 2,controller: bioCon,),
                  const SizedBox(
                    height: AppSizes.bodyPadding*3,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AppButton(
                          btnColor: AppColors.button2,
                          name: "Delete",
                          txtColor: AppColors.seed,
                          elevation: AppSizes.elevation,
                          onPressed: (){}
                      ),

                      const SizedBox(width: AppSizes.bodyPadding,),

                      AppButton(
                          name: "Submit",
                          onPressed: (){}
                      ),

                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
