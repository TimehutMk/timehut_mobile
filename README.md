# Timehut - Employee Time Tracking Documentation and Development Setup Guide

## Table of Contents

1. [Introduction](#introduction)
2. [System Functionalities](#system-functionalities)
3. [Technology Stack](#technology-stack)
4. [Setting Up the Development Environment](#setting-up-the-development-environment)
   - [Prerequisites](#prerequisites)
   - [Cloning the Timehut Project](#cloning-the-timehut-project)
   - [Running the Timehut Flutter App](#running-the-timehut-flutter-app)
5. [Images from the Application](#images-from-the-application)

---

## Introduction<a name="introduction"></a>

Welcome to Timehut, an efficient employee time tracking solution developed using the Flutter framework. Timehut is designed to help organizations effortlessly manage their employees' working hours, whether they are on-site at the office or working remotely. This documentation provides an overview of the project, its key functionalities, the technologies used to build it, and a guide on setting up the development environment.

## System Functionalities<a name="system-functionalities"></a>

Timehut offers the following core functionalities:

1. **User Login**: Employees can securely log in to the Timehut app.

2. **Shift Management**: Employees can view their shifts, including start and end times.

3. **Tracking Time from Home**: Employees can track their work hours from home without the need for location tracking.

4. **Tracking Time from Office**: When employees are at the office, Timehut can request access to their mobile device's location services to verify their presence at the designated workplace.

5. **Request Help from Administration**: Users can request assistance from the platform administration when needed.

6. **Location Services**: Timehut utilizes location services from the user's phone to enable location-based tracking when working from the office.

## Technology Stack<a name="technology-stack"></a>

Timehut is developed using the following technologies:

- **Flutter**: The front-end of the application is built using Flutter, a popular open-source UI software development toolkit created by Google.

- **Laravel API**: Timehut communicates with a Laravel-based API to store and retrieve employee shift data. The API is responsible for managing user accounts, shifts, and, if enabled, location tracking.

This combination of Flutter for the mobile app provides a robust and scalable solution for tracking employee working hours.

## Setting Up the Development Environment<a name="setting-up-the-development-environment"></a>

### Prerequisites<a name="prerequisites"></a>

Before you begin, please ensure that you have the following prerequisites installed:

1. **Flutter**: Timehut is built using the Flutter framework, so you need to have Flutter installed on your machine. Follow the official Flutter installation guide for your platform: [Install Flutter](https://flutter.dev/docs/get-started/install).

2. **IDE (Integrated Development Environment)**: You can choose from various IDEs for Flutter development. A popular option is:

   - **Visual Studio Code (VSCode)**: You can download and install VSCode from [here](https://code.visualstudio.com/).

3. **Flutter and Dart Extensions**: If you're using VSCode, you should install the "Flutter" and "Dart" extensions from the VSCode Marketplace to enhance your development experience.

4. **Android Emulator or Physical Device** (for Android development) or **iOS Simulator or Physical Device** (for iOS development): You need either an emulator/simulator or a physical device for testing your Flutter app.

### Cloning the Timehut Project<a name="cloning-the-timehut-project"></a>

1. Open your terminal or command prompt.

2. Use `git` to clone the Timehut project repository from GitHub:

   ```bash
   git clone https://github.com/TimehutMk/timehut_mobile.git
   ```

3. Change your working directory to the cloned repository:

   ```bash
   cd timehut_mobile
   ```

### Running the Timehut Flutter App<a name="running-the-timehut-flutter-app"></a>

#### Using Visual Studio Code (VSCode)<a name="using-visual-studio-code-vscode"></a>

1. Open VSCode.

2. Open the Timehut project folder using VSCode. You can do this by selecting "File" -> "Open Folder" and choosing the `timehut_mobile` folder where you cloned the Timehut project.

3. Ensure that the Flutter and Dart extensions are installed. If not, you can find and install them from the VSCode Marketplace.

4. Open a terminal within VSCode by selecting "View" -> "Terminal."

5. Run the following command to check if Flutter is properly configured:

   ```bash
   flutter doctor
   ```

6. If any issues are detected, follow the recommendations provided by `flutter doctor` to resolve them.

7. Once everything is set up correctly, you can run the Timehut app on an emulator or physical device using the following command:

   ```bash
   flutter run
   ```

That's it! You should now have the Timehut Flutter app running on your local development environment. You can make changes, test, and customize the app as needed for your specific use case.


### Images from the Application<a name="images-from-the-application"></a>

<img width="200" src="https://github.com/TimehutMk/timehut_mobile/assets/75941337/885f293d-e462-4df6-859e-ce5a6966207e">
<img width="200" src="https://github.com/TimehutMk/timehut_mobile/assets/75941337/762a3949-1ce2-479b-9c34-0bae12d78a05">
<img width="200" src="https://github.com/TimehutMk/timehut_mobile/assets/75941337/69eb6131-c924-43a2-899d-71216d6113a0">
<img width="200" src="https://github.com/TimehutMk/timehut_mobile/assets/75941337/0c60ab84-9ae6-4ea1-b94c-f27bc260b93d">

