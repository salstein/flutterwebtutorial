import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webtutorial/constants/controllers.dart';
import 'package:webtutorial/helpers/responsiveness.dart';
import 'package:webtutorial/pages/clients/widgets/clients_table.dart';
import 'package:webtutorial/widgets/Custom_text.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
         return Container(
                child: Column(
                children: [
                 Obx(() => Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top:
                        Responsiveness.isSmallScreen(context) ? 56 : 6),
                        child: CustomText(text: menuController.activeItem.value,color: Colors.black, size: 24, weight: FontWeight.bold,)),
                    ],
                  ),),

                  Expanded(child: ListView(
                    children: [
                      Clientstable(),
                    ],
                  )),

                  ],
                ),
              );
  }
}