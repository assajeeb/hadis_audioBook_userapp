import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:hadith_app/Books%20Pages/page1.dart';
import 'package:hadith_app/Books%20Pages/page10.dart';
import 'package:hadith_app/Books%20Pages/page11.dart';
import 'package:hadith_app/Books%20Pages/page12.dart';
import 'package:hadith_app/Books%20Pages/page13.dart';
import 'package:hadith_app/Books%20Pages/page14.dart';
import 'package:hadith_app/Books%20Pages/page15.dart';
import 'package:hadith_app/Books%20Pages/page16.dart';
import 'package:hadith_app/Books%20Pages/page17.dart';
import 'package:hadith_app/Books%20Pages/page18.dart';
import 'package:hadith_app/Books%20Pages/page19.dart';
import 'package:hadith_app/Books%20Pages/page2.dart';
import 'package:hadith_app/Books%20Pages/page20.dart';
import 'package:hadith_app/Books%20Pages/page21.dart';
import 'package:hadith_app/Books%20Pages/page22.dart';
import 'package:hadith_app/Books%20Pages/page23.dart';
import 'package:hadith_app/Books%20Pages/page3.dart';
import 'package:hadith_app/Books%20Pages/page4.dart';
import 'package:hadith_app/Books%20Pages/page5.dart';
import 'package:hadith_app/Books%20Pages/page6.dart';
import 'package:hadith_app/Books%20Pages/page7.dart';
import 'package:hadith_app/Books%20Pages/page8.dart';
import 'package:hadith_app/Books%20Pages/page9.dart';
import 'package:hadith_app/Pages/home_page.dart';
import 'package:hadith_app/Pages/splash.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root widget
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        supportedLocales: [
          Locale('en', ''), // English
          Locale('bn', ''), // Bangla
          Locale('ar', ''), // Arabic
        ],
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Locale('bn'),
        title: 'Hadith App',
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,

      home:SplashScreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
        '/page4': (context) => Page4(),
        '/page5': (context) => Page5(),
        '/page6': (context) => Page6(),
        '/page7': (context) => Page7(),
        '/page8': (context) => Page8(),
        '/page9': (context) => Page9(),
        '/page10': (context) => Page10(),
        '/page11': (context) => Page11(),
        '/page12': (context) => Page12(),
        '/page13': (context) => Page13(),
        '/page14': (context) => Page14(),
        '/page15': (context) => Page15(),
        '/page16': (context) => Page16(),
        '/page17': (context) => Page17(),
        '/page18': (context) => Page18(),
        '/page19': (context) => Page19(),
        '/page20': (context) => Page20(),
        '/page21': (context) => Page21(),
        '/page22': (context) => Page22(),
        '/page23': (context) => Page23(),


      },

    );
  }
}
