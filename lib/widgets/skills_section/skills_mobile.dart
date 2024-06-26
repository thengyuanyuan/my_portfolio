import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < platformItemList.length; i++)
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Chip(
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                      horizontal: 20,
                    ),
                    avatar: Icon(
                      platformItemList[i].icon,
                    ),
                    labelPadding: const EdgeInsets.only(left: 20.0),
                    label: SizedBox(
                      width: 300,
                      child: Text(
                        platformItemList[i].title,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          // Programming Languages
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < proLangItemList.length; i++)
                Chip(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  label: Text(proLangItemList[i].title),
                  avatar: Icon(
                    proLangItemList[i].icon,
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
