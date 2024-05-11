import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/contact_items.dart';
import 'package:my_portfolio/styles/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'custom_text_field.dart';

class ContactsSection extends StatelessWidget {
  const ContactsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.only(top: 50, bottom: 80, left: 25, right: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Contacts title
          Text(
            'Contact Me',
            style: kSectionTitleTextStyle,
          ),
          const SizedBox(
            height: 50,
          ),
          // Contacts Content
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // contactMeTextfields(),
                // const SizedBox(
                //   height: 50,
                //   width: 200,
                //   child: Divider(
                //     thickness: 2,
                //   ),
                // ),
                Table(
                  columnWidths: const <int, TableColumnWidth>{
                    0: IntrinsicColumnWidth(),
                    1: IntrinsicColumnWidth(),
                  },
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: contactItemList
                      .map(
                        (contact) => TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                                vertical: 5.0,
                              ),
                              child: Icon(contact.icon),
                            ),
                            SelectableText(
                              contact.text,
                              cursorColor: Theme.of(context).canvasColor,
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column contactMeTextfields() {
    return Column(
      children: [
        ResponsiveBuilder(builder: (BuildContext context, sizingInformation) {
          return sizingInformation.deviceScreenType == DeviceScreenType.mobile
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
            style: kButtonStyle,
            child: const Text("Get in touch"),
          ),
        ),
      ],
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
