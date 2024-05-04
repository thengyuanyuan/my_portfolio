import 'package:flutter/material.dart';
import 'package:flutter_devicon/flutter_devicon.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/sns_links.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'custom_text_field.dart';
import 'dart:js' as js;

class ContactsSection extends StatelessWidget {
  const ContactsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.only(top: 50, bottom: 80, left: 25, right: 25),
      color: CustomColor.bgLight1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Contacts title
          Text(
            'My Contacts',
            style: kSectionTitleTextStyle,
          ),
          const SizedBox(
            height: 50,
          ),

          // Contacts Content
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: Column(
              children: [
                ResponsiveBuilder(
                    builder: (BuildContext context, sizingInformation) {
                  return sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile
                      ? nameEmailTextFieldMobile()
                      : nameEmailTextField();
                }),
                const SizedBox(height: 10),
                const CustomTextField(
                  hintText: "Your message...",
                  maxLine: 15,
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Get in touch"),
                  ),
                ),
                const SizedBox(
                  width: 250,
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Wrap(
                  spacing: 10,
                  children: [
                    InkWell(
                      onTap: () {
                        js.context.callMethod('open', [SnsLinks.linkedIn]);
                      },
                      child: const Icon(FlutterDEVICON.linkedin_plain),
                    ),
                    InkWell(
                      onTap: () {
                        js.context.callMethod('open', [SnsLinks.gitHub]);
                      },
                      child: const Icon(FlutterDEVICON.github_original),
                    ),
                    // InkWell(child: Icon(Icons.email)),
                    // InkWell(child: Icon(Icons.phone_rounded)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Row nameEmailTextField() => const Row(
        children: [
          Flexible(
            child: CustomTextField(
              hintText: "Your name",
            ),
          ),
          SizedBox(width: 10),
          Flexible(
            child: CustomTextField(
              hintText: "Your email",
            ),
          ),
        ],
      );
  Column nameEmailTextFieldMobile() => const Column(
        children: [
          CustomTextField(
            hintText: "Your name",
          ),
          SizedBox(height: 10),
          CustomTextField(
            hintText: "Your email",
          ),
        ],
      );
}
