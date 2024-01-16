import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/configs/app_text_style.dart';
import 'package:admin_portfolio/utilities/date_formatter.dart';
import 'package:admin_portfolio/widgets/app_button.dart';
import 'package:admin_portfolio/widgets/app_dialog.dart';
import 'package:admin_portfolio/widgets/app_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {

  TextEditingController organizationCon=TextEditingController(),roleCon=TextEditingController(),joinDateCon=TextEditingController(),lastDateCon=TextEditingController(), notesCon=TextEditingController();
  List<String> notes = [];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBg,
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldBg,
        title: const Text("Experience"),
        centerTitle: false,
      ),
      body: ListView(
        padding: const EdgeInsets.all(AppSizes.bodyPadding),
        children: [
          //stRT input section
          Card(
              surfaceTintColor: AppColors.background,
              elevation: 0.2,
              child: Padding(
                  padding: const EdgeInsets.all(AppSizes.bodyPadding),
                  child: Column(children: [
                     AppTextField(
                      label: "Company Name",
                      hint: "Enter your company name",
                      controller: organizationCon,
                    ),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                     AppTextField(
                      label: "Job Title",
                      hint: "Enter your job title",
                      controller: roleCon,
                    ),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: ()async{
                              final selected = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now().subtract(const Duration(days: 365*10)),
                                  lastDate: DateTime.now()
                              );

                              if (selected != null) {
                                setState(() {
                                  joinDateCon.text = formatMonthYear(selected);
                                });
                              }
                            },
                            child: const IgnorePointer(
                              child: AppTextField(
                                label: "Join Date",
                                hint: "MM/YYYY",
                                suffixIcon: Icon(
                                  CupertinoIcons.calendar,
                                  color: AppColors.hint,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: AppSizes.bodyPadding + 5,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: ()async{

                              final selected = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime.now().subtract(const Duration(days: 365*10)),
                                  lastDate: DateTime.now()
                              );

                              if (selected != null) {
                                setState(() {
                                  lastDateCon.text = formatMonthYear(selected);
                                });
                              }
                            },
                            child: IgnorePointer(
                              child: AppTextField(
                                label: "Last Date",
                                hint: "MM/YYYY",
                                controller: lastDateCon,
                                suffixIcon: const Icon(
                                  CupertinoIcons.calendar,
                                  color: AppColors.hint,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                     AppTextField(
                      label: "Notes",
                      hint: "Enter your note",
                      controller: notesCon,
                      suffixIcon: IconButton(
                          onPressed: (){
                            final n = notesCon;
                            if(n.text.isEmpty || notes.contains(n.text)){
                              debugPrint("already added");
                              appDialog(context,content: 'Already added this note.', actions: [
                                TextButton(onPressed: ()=>Navigator.pop(context), child: const Text("OK"))
                              ]);
                            }else{
                              notes.add(n.text);
                              notesCon.clear();
                              setState(() {

                              });
                            }
                          },
                          icon: const Icon(
                            Icons.add,
                            color: AppColors.hint,
                          )
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.bodyPadding,
                    ),
                    //here list view builder
                    notes.isEmpty?const SizedBox():
                    ListView.builder(
                        itemCount: notes.length,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                              decoration: BoxDecoration(
                                  color: AppColors.scaffoldBg,
                                  borderRadius: BorderRadius.circular(8)),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              margin: const EdgeInsets.only(
                                  bottom: AppSizes.bodyPadding),
                              child: Row(
                                children: [
                                  const Expanded(
                                      child: Text(
                                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(CupertinoIcons.pen,
                                        color: AppColors.hint, size: 18),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: const Icon(
                                      Icons.close,
                                      color: AppColors.hint,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ));
                        }),
                    const SizedBox(
                      height: AppSizes.bodyPadding * 3,
                    ),

                    Align(
                      alignment: Alignment.centerRight,
                      child: AppButton(name: "Submit", onPressed: () {}),
                    )
                  ]))),
          //end input section

          const SizedBox(
            height: AppSizes.bodyPadding * 2,
          ),

          //stRT list section
          Card(
              surfaceTintColor: AppColors.background,
              elevation: 0.2,
              child: Padding(
                  padding: const EdgeInsets.all(AppSizes.bodyPadding),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "All Experience",
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
                                      title: const Text("Company Name"),
                                      subtitle: const Text("Designation"),
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
          //end list section
        ],
      ),
    );
  }
}
