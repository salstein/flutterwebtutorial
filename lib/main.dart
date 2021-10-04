import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtutorial/layout.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme
        ).apply(
          bodyColor: Colors.black
        ),
pageTransitionsTheme: PageTransitionsTheme(builders:{
  TargetPlatform.iOS:FadeUpwardsPageTransitionsBuilder(),
  TargetPlatform.android:FadeUpwardsPageTransitionsBuilder()
}),
primaryColor: Colors.blue
      ),
      title:"Dash",
home: SiteLayout(),
    );
  }
}
