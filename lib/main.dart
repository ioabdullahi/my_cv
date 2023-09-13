import 'package:flutter/material.dart';
import 'package:my_cv/src/constants/constants.dart';
import 'package:my_cv/src/views/home.dart';
import 'package:my_cv/src/views/models/models.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final CVModel cvData = CVModel(
        fullName: CVConstants.defaultName,
        slackUserName: CVConstants.defaultSlackName,
        gitHubHandle: CVConstants.defaultGitHubHandle,
        briefBio: CVConstants.defaultBriefBio);
    return MaterialApp(
      // Application name
      title: 'HNGX STAGE TWO TASK',
      //Remove Debug Banner
      debugShowCheckedModeBanner: false,

      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: HomePage(cvData: cvData),
    );
  }
}
