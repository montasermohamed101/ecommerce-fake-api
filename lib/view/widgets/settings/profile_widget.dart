import 'package:ecommerce/logic/controllers/auth_controller.dart';
import 'package:ecommerce/logic/controllers/settings_controller.dart';
import 'package:ecommerce/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
   ProfileWidget({Key? key}) : super(key: key);

   final controller = Get.find<SettingsConroller>();
   final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx((){
          return Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration:  BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(authController.displayUserPhoto.value),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtils(
                    text: controller.capitalize(authController.displayUserName.value),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color:Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                  TextUtils(
                    text: authController.displayUserEmail.value,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color:Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ],
              ),
            ],
          );
        })
      ],
    );
  }
}
