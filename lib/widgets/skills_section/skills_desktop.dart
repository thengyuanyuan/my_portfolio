import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 600,
          ),
          child: Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < platformItemList.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    leading: Icon(platformItemList[i].icon),
                    title: Text(platformItemList[i].title),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(width: 50),
        // Programming Languages
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.sizeOf(context).width * 0.4,
              // maxWidth: 500,
            ),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                for (int i = 0; i < proLangItemList.length; i++)
                  Chip(
                    backgroundColor: CustomColor.bgLight1,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    label: Text(proLangItemList[i].title),
                    avatar: Icon(
                      proLangItemList[i].icon,
                      color: CustomColor.whiteSecondary,
                    ),
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
