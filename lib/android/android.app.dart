import 'package:contacts_app/android/styles.dart';
import 'package:contacts_app/android/views/home.view.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: Scaffold(
        body: HomeView(),
      ),
    );
  }
}
