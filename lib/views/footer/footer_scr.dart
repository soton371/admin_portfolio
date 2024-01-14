import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/widgets/app_button.dart';
import 'package:admin_portfolio/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class FooterScreen extends StatelessWidget {
  const FooterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        title: const Text("Footer"),
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
                  child: Column(children: [
                    const AppTextField(label: "Develop by", hint: "Enter your developer"),


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
                  ]))),
        ],
      ),
    );
  }
}
