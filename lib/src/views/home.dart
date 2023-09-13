import 'package:flutter/material.dart';
import 'package:my_cv/src/constants/constants.dart';
import './models/models.dart';
import 'edit_cv.dart';

class HomePage extends StatefulWidget {
  final CVModel cvData;
  //final String title;
  HomePage({required this.cvData, Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late CVModel cvData;
  @override
  void initState() {
    super.initState();
    // Initialize cvData here.
    cvData = widget.cvData;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My CV"),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            // In CVViewPage where you navigate to CVEditScreen
            onPressed: () async {
              final updatedData = await Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CVEditScreen(cvData: cvData)),
              );

              if (updatedData != null) {
                setState(() {
                  cvData = updatedData;
                });
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Text("Personal Details",
                style: TextStyle(
                    fontSize: 18.0,
                    //backgroundColor: Colors.lime,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue)),
            Divider(thickness: 1.0, color: Colors.grey),
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Full Name: ${widget.cvData.fullName}",
                      style:
                          TextStyle(fontSize: 15.0, color: Color(0xfff9f9f6))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Slack Username: ${widget.cvData.slackUserName}",
                      style: TextStyle(
                          fontSize: 15.0,
                          //fontWeight: FontWeight.bold,
                          color: Color(0xfffefefd))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("GitHub Handle: ${widget.cvData.gitHubHandle}",
                      style: TextStyle(
                          fontSize: 15.0,
                          //fontWeight: FontWeight.bold,
                          color: Color(0xfffefefd))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("Personal Bio: ${widget.cvData.briefBio}",
                      style: TextStyle(
                          fontSize: 15.0,
                          // fontWeight: FontWeight.bold,
                          color: Color(0xfff9f9f9))),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text("Professional Details",
                style: TextStyle(
                    fontSize: 18.0,
                    //backgroundColor: Colors.lime,
                    fontWeight: FontWeight.w700,
                    color: Colors.blue)),
            Divider(thickness: 1.0, color: Colors.grey),
            Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              //color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "WORK EXPERIENCE: \n 1. Mobile Application Developer \n 2. Product Designer \n 3. Seasoned Coach",
                      style:
                          TextStyle(fontSize: 15.0, color: Color(0xfff9f9f6))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                      "LICENCES & CERTIFICATIONS \n 1. Udemy Mobile App Certificate \n 2. TerraHQ Certificate \n 3. Skill",
                      style: TextStyle(
                          fontSize: 15.0,
                          //fontWeight: FontWeight.bold,
                          color: Color(0xfffefefd))),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text("SKILLS \n 1. Flutter \n 2. Figma \n 3. Dart",
                      style: TextStyle(
                          fontSize: 15.0,
                          //fontWeight: FontWeight.bold,
                          color: Color(0xfffefefd))),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
