import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_app/shared/style/my_theme.dart';

import 'layout/homeLayout.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       initialRoute: HomeLayout.routename,
       routes: {
         HomeLayout.routename:(_)=> HomeLayout(),
       },
      debugShowCheckedModeBanner: false,
      theme:MyThemeData.lightTheme ,
      darkTheme:MyThemeData.darkTheme ,
      themeMode:ThemeMode.light ,
      // locale: ,


    );
  }
}



