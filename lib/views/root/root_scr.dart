import 'package:admin_portfolio/configs/app_colors.dart';
import 'package:admin_portfolio/configs/app_sizes.dart';
import 'package:admin_portfolio/configs/app_text_style.dart';
import 'package:admin_portfolio/views/about/about_scr.dart';
import 'package:admin_portfolio/views/contacts/contact_scr.dart';
import 'package:admin_portfolio/views/experience/experience_scr.dart';
import 'package:admin_portfolio/views/footer/footer_scr.dart';
import 'package:admin_portfolio/views/intro/intro_scr.dart';
import 'package:admin_portfolio/views/root/components/side_bar_tile.dart';
import 'package:admin_portfolio/views/work/work_scr.dart';
import 'package:flutter/material.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  String currentPage = 'Intro';
  bool doLogOut = false;

  Widget getPage(String v) {
    switch (v) {
      case "Intro":
        return const IntroScreen();
      case "About":
        return const AboutScreen();
      case "Experience":
        return const ExperienceScreen();
      case "Work":
        return const WorkScreen();
      case "Contacts":
        return const ContactScreen();
      case "Footer":
        return const FooterScreen();
      default:
        return const IntroScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //start side bar
          SizedBox(
            width: 260,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.bodyPadding),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(AppSizes.bodyPadding - 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppSizes.bodyPadding),
                      color: AppColors.selected,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              doLogOut = !doLogOut;
                            });
                          },
                          child: Row(
                            children: [
                              //image
                              const CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      AssetImage('assets/images/soton.JPG')),
                              //name
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "  Soton Ahmed",
                                    style: AppTextStyle.titleMedium(context),
                                  ),
                                  const Text(
                                    "  soton371@gmail.com",
                                    style: TextStyle(
                                        color: AppColors.hint, fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Icon(
                                doLogOut
                                    ? Icons.arrow_drop_up_outlined
                                    : Icons.arrow_drop_down_outlined,
                                size: 18,
                                color: AppColors.hint,
                              ),
                            ],
                          ),
                        ),
                        doLogOut
                            ? const SizedBox(
                                height: AppSizes.bodyPadding,
                              )
                            : const SizedBox(),
                        doLogOut
                            ? TextButton.icon(
                                onPressed: () {},
                                icon: const RotatedBox(
                                    quarterTurns: 2,
                                    child: Icon(
                                      Icons.logout,
                                      size: 20,
                                    )),
                                label: const Text("Log Out"))
                            : const SizedBox()
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppSizes.bodyPadding * 2,
                  ),
                  Expanded(
                      child: ListView(
                    children: [
                      SideBarTile(
                          title: 'Intro',
                          currentPage: currentPage,
                          iconData: Icons.layers,
                          onTap: () {
                            setState(() {
                              currentPage = 'Intro';
                            });
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                      SideBarTile(
                          title: 'About',
                          currentPage: currentPage,
                          iconData: Icons.document_scanner,
                          onTap: () {
                            setState(() {
                              currentPage = 'About';
                            });
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                      SideBarTile(
                          title: 'Experience',
                          currentPage: currentPage,
                          iconData: Icons.code,
                          onTap: () {
                            setState(() {
                              currentPage = 'Experience';
                            });
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                      SideBarTile(
                          title: "Work",
                          currentPage: currentPage,
                          iconData: Icons.coffee,
                          onTap: () {
                            setState(() {
                              currentPage = 'Work';
                            });
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                      SideBarTile(
                          title: "Contacts",
                          currentPage: currentPage,
                          iconData: Icons.mark_unread_chat_alt,
                          onTap: () {
                            setState(() {
                              currentPage = 'Contacts';
                            });
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                      SideBarTile(
                          title: "Footer",
                          currentPage: currentPage,
                          iconData: Icons.landscape_outlined,
                          onTap: () {
                            setState(() {
                              currentPage = 'Footer';
                            });
                          }),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
          //end side bar

          // Your app screen body
          Expanded(child: getPage(currentPage))
        ],
      ),
    );
  }
}
