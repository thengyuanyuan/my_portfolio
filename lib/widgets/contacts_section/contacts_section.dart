import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/styles.dart';

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
          // TODO: Contacts Content
        ],
      ),
    );
  }
}
