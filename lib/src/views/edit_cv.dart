import 'package:flutter/material.dart';
import 'package:my_cv/src/views/models/models.dart';

// ignore: must_be_immutable
class CVEditScreen extends StatefulWidget {
  final CVModel cvData;
  CVEditScreen({required this.cvData, Key? key}) : super(key: key);

  @override
  State<CVEditScreen> createState() => _CVEditScreenState();
}

class _CVEditScreenState extends State<CVEditScreen> {
  late TextEditingController fullNameController;
  late TextEditingController gitHubHandleController;
  late TextEditingController slackNameController;
  late TextEditingController briefBioController;
  @override
  void initState() {
    super.initState();
    fullNameController = TextEditingController(text: widget.cvData.fullName);
    slackNameController =
        TextEditingController(text: widget.cvData.slackUserName);
    gitHubHandleController =
        TextEditingController(text: widget.cvData.gitHubHandle);
    briefBioController = TextEditingController(text: widget.cvData.briefBio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit CV"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(labelText: "Full Name"),
            ),
            TextField(
              controller: slackNameController,
              decoration: InputDecoration(labelText: "Slack Username"),
            ),
            TextField(
              controller: gitHubHandleController,
              decoration: InputDecoration(labelText: "GitHub Handle"),
            ),
            TextField(
              controller: briefBioController,
              decoration: InputDecoration(labelText: "Personal Bio"),
              maxLines: 3,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the edited data
                String newFullName = fullNameController.text;
                String newSlackUsername = slackNameController.text;
                String newGithubHandle = gitHubHandleController.text;
                String newPersonalBio = briefBioController.text;

                // Update the CV data
                widget.cvData.fullName = newFullName;
                widget.cvData.slackUserName = newSlackUsername;
                widget.cvData.gitHubHandle = newGithubHandle;
                widget.cvData.briefBio = newPersonalBio;
                // Pass the updated CVModel back to the previous screen
                Navigator.pop(context, widget.cvData);
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}
