import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/configs/app_text_style.dart';
import 'package:admin_portfolio/widgets/app_button.dart';
import 'package:admin_portfolio/widgets/app_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  const WorkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        title: const Text("Work"),
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
                    const AppTextField(label: "Software Name", hint: "Enter your software name"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Summary", hint: "Enter your software summary",maxLines: 2),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Website Url", hint: "Enter your website url"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Appstore Url", hint: "Enter your appstore url"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Play Store Url", hint: "Enter your play store url"),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    const AppTextField(label: "Image Url", hint: "Enter your image url"),

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

          const SizedBox(
            height: AppSizes.bodyPadding * 2,
          ),

          Card(
              surfaceTintColor: AppColors.background,
              elevation: 0.2,
              child: Padding(
                  padding: const EdgeInsets.all(AppSizes.bodyPadding),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All Software",
                          style: AppTextStyle.titleLarge(context),
                        ),
                        const SizedBox(
                          height: AppSizes.bodyPadding,
                        ),
                        ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => Column(
                              children: [
                                const Divider(),
                                ListTile(
                                  dense: true,
                                  contentPadding: EdgeInsets.zero,
                                  title: const Text("Software Name"),
                                  subtitle: const Text("Summary of software",maxLines: 1,overflow: TextOverflow.ellipsis,),
                                  trailing: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            CupertinoIcons.pen,
                                            color: AppColors.hint,
                                            size: 20,
                                          )),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.close,
                                            color: AppColors.hint,
                                            size: 20,
                                          )),
                                    ],
                                  ),
                                ),
                              ],
                            ))
                      ])))
        ],
      ),
    );
  }
}
