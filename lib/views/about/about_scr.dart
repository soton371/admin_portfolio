
import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/widgets/app_button.dart';
import 'package:admin_portfolio/widgets/app_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  final ImagePicker picker = ImagePicker();
  Uint8List? imageBytes;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        title: const Text("About"),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSizes.bodyPadding),
        children: [

          Row(
            children: [
              Expanded(
                flex: 3,
                child: Card(
                  surfaceTintColor: AppColors.background,
                  elevation: 0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.bodyPadding),
                    child: Column(
                      children: [
                        const AppTextField(label: "Description", hint: "Enter your description",maxLines: 3,),
                        const SizedBox(
                          height: AppSizes.bodyPadding,
                        ),
                        AppTextField(label: "Technologies", hint: "Enter your technology",suffixIcon: IconButton(
                                  onPressed: (){}, icon: const Icon(Icons.add)),),
                        const SizedBox(
                          height: AppSizes.bodyPadding,
                        ),

                        Row(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: AppColors.scaffoldBg,
                                    borderRadius: BorderRadius.circular(4)
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                                child: Row(
                                  children: [
                                    const Text("Dart"),
                                    const SizedBox(width: 10,),
                                    InkWell(
                                      onTap: (){},
                                      child: const Icon(CupertinoIcons.multiply_circle_fill,size: 14,color: AppColors.hint,),
                                    )
                                  ],
                                ))
                          ],
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
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(width: AppSizes.bodyPadding,),

              Expanded(
                child: Card(
                  surfaceTintColor: AppColors.background,
                  elevation: 0.2,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    onTap: ()async{
                      final XFile? image = await picker.pickImage(source: ImageSource.gallery);
                      if(image != null){
                        imageBytes = await image.readAsBytes();
                        setState(() {

                        });
                      }

                    },
                    child: Container(
                      height: 290,
                      decoration: BoxDecoration(
                        image:imageBytes== null ? null : DecorationImage(image: MemoryImage(imageBytes!),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Icon(CupertinoIcons.photo,color: AppColors.hint,),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
