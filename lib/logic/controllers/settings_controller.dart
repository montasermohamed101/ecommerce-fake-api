import 'package:ecommerce/utils/my_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingsConroller extends GetxController {


  var switchValue = false.obs;

  var storage = GetStorage();
  var langlocal = en;

  String capitalize(String profileName)
  {
    return profileName.split(" ").map((name) => name.capitalize).join(" ");
  }


  //Language

  @override
  void onInit() async{
    super.onInit();
    langlocal = await getLanguage;
  }
  void saveLanguage(String lang)async
  {
    await storage.write('lang', lang);
  }

 Future<String> get  getLanguage async
 {
   return await storage.read('lang');
 }

  void changeLanguage(String typeLang)
  {
    saveLanguage(typeLang);
    if(langlocal == typeLang)
    {
      return ;
    }
    if(typeLang == fr){
      langlocal = fr;
      saveLanguage(fr);
    }else if(typeLang == ar){
      langlocal = ar;
      saveLanguage(ar);
    }else{
      langlocal = en;
      saveLanguage(en);
    }
    update();
  }

}