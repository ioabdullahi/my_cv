

# My CV Mobile Application

## Overview

This mobile application serves as a comprehensive CV (Curriculum Vitae), showcasing personal and professional details. The app enables both viewing and editing of the CV information. It's designed to display full name, Slack username, GitHub handle, and a brief personal bio. Users can edit this information, and the app will dynamically update without requiring manual refresh.

## Prerequisites

Before you begin, ensure you have met the following requirements:
- [Flutter](https://flutter.dev/) installed on your development environment.

## Getting Started

To get this project up and running on your local machine, follow these steps:

**Step 1: Clone the Repository**

```bash
git clone https://github.com/ioabdullahi/my_cv.git
```

**Step 2: Navigate to the Project Directory**

```bash
cd cv-mobile-app
```

**Step 3: Get Default Dependencies**

```bash
flutter pub get
```

**Step 4: Now Run the App**

```bash
flutter run
```

## Usage Manual

- **Home/First Page (CV View):** This is the initial screen upon opening the app. It displays the default CV information divided into two segments,first segment which is personal details including full name, Slack username, GitHub handle and personal bio. while the second segment which is Professional details including work experiene, licenses and certification and skills

- **Editing Capability:** By Clicking the edit icon in the app bar to access the editing page. Here, you can modify your the personal details on the CV.

- **Real-time Updates:** After making changes on the editing page and saving, the CV view page will immediately reflect the alterations.

## Folder Structure

The project follows the Flutter standard folder structure:

```
cv-mobile-app/
|- android
|- build
|- ios
|- lib
|- test
```

In the `lib` folder, you'll find:
- `src/`: parent folder for all other ones.
- `constants/`: Contains application-level constants.
- `models/`: Defines the data model employed in the CV project.
- `views/`: Contains the main screens of the application.


## Assumptions

- The app assumes that users have  Flutter installed and properly configured on their development environment.
- This project does not integrate any third-party packages or libraries, adhering to the requirement of native capabilities only.

## Author

- [Ibrahim Olalekan Abdullahi](https://www.github.com/ioabdullahi)

## Conclusion

This project allowed me to play with basic state management, kudos to the HNG Team
You can view the virtual presentation of this app via this link [APP DEMO](https://appetize.io/app/nt6lslc5ssb3yuvmp3hpsbm3qy)
