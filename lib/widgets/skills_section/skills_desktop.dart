import 'package:flutter/material.dart';
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
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 20,
                    ),
                    avatar: Icon(platformItemList[i].icon),
                    labelPadding: const EdgeInsets.only(left: 20.0),
                    label: SizedBox(
                      width: 300,
                      child: Text(platformItemList[i].title),
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(
          width: 50,
        ),
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
                    // backgroundColor: CustomColor.bgLight1,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    label: Text(proLangItemList[i].title),
                    avatar: Icon(
                      proLangItemList[i].icon,
                      // color: CustomColor.whiteSecondary,
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
