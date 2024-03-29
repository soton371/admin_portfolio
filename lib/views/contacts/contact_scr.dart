import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/widgets/app_button.dart';
import 'package:admin_portfolio/widgets/app_text_field.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        title: const Text("Contact"),
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
                    const AppTextField(label: "Get in touch", hint: "Enter your get in touch"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Email", hint: "Enter your email",),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Github Url", hint: "Enter your github url"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "LinkedIn Url", hint: "Enter your linkedIn url"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Stack Overflow Url", hint: "Enter your stack overflow url"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),

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
