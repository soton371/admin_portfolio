import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/widgets/app_button.dart';
import 'package:admin_portfolio/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

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
                  const AppTextField(label: "Name", hint: "Enter your name"),
                  const SizedBox(
                    height: AppSizes.bodyPadding,
                  ),
                  const AppTextField(label: "Who are you", hint: "Enter about you",),
                  const SizedBox(
                    height: AppSizes.bodyPadding,
                  ),
                  const AppTextField(label: "Short Bio", hint: "Enter your short bio",maxLines: 2,),
                  const SizedBox(
                    height: AppSizes.bodyPadding*3,
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: AppButton(
                        name: "Submit",
                        onPressed: (){}
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
