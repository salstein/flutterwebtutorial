import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webtutorial/constants/controllers.dart';
import 'package:webtutorial/helpers/responsiveness.dart';
import 'package:webtutorial/pages/overview/widgets/available_drivers_table.dart';
import 'package:webtutorial/pages/overview/widgets/overview_cards_medium.dart';
import 'package:webtutorial/pages/overview/widgets/overview_cards_small.dart';
import 'package:webtutorial/pages/overview/widgets/revenue_section_large.dart';
import 'package:webtutorial/widgets/Custom_text.dart';

import 'widgets/overview_cards_large.dart';
import 'widgets/revenue_section_small.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: Responsiveness.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              if (Responsiveness.isLargeScreen(context) ||
                  Responsiveness.isMediumScreen(context))
                if (Responsiveness.isMediumScreen(context))
                  OverviewCardsMediumScreen()
                else
                  OverviewCardsLargeScreen()
              else
                OverviewCardsSmallScreen(),
              if (!Responsiveness.isSmallScreen(context))
                RevenueSectionLarge()
              else
                RevenueSectionSmall(),
              AvailableDriversTable(),
            ],
          ))
        ],
      ),
    );
  }
}
