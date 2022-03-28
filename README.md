# Debug network requests in Flutter and Proxyman

<img src="https://user-images.githubusercontent.com/47568606/103482144-226d2480-4df0-11eb-82e1-8f3c60ec8b45.jpg" width="260"></a>

A simple application for sending a request through a proxy with Flutter.

> **UI toolkit:** Flutter v1.22.5<br>
**Language:** Dart v2.10.4<br>
**Platform:** Android, iOS<br>
**IDE:** Visual Studio Code v1.52.1<br>

Flutter does not use a system-level proxy, so requests to Proxyman will not be displayed. To do this, you must manually configure your HTTP client used in the code to work with a proxy.

This project uses the official package for sending requests http v0.12.2:
https://pub.dev/packages/http

<b>How to use:</b>
 1. Disable VPN if enabled
 2. Go to Proxyman -> Certificate -> Install certficate on iOS (or Android) -> Physical Device -> Copy server and port
 3. Download this project and open in Visual Studio Code (or Android Studio)
 4. Go to Project -> proxy.dart -> Paste your server and port
 5. Go to Project -> strings.dart -> Paste your link
 6. Lauch emulator or simulator: 

    if iOS simulator -> Launch any simulator -> Go to Proxyman - Install certficate on iOS -> Sumulator -> Follow the guide
    
    if Android emulator -> Launch any emulator -> Go to Proxyman - Install certficate on Android -> Emulator -> Follow the guide

 7. Go to Project -> main.dart -> Run 

<br><b>Result with emulator and simulator:</b>

<img src="https://user-images.githubusercontent.com/47568606/103482185-6f50fb00-4df0-11eb-8d1a-db659eeb80c1.png" width="260"></a>   <img src="https://user-images.githubusercontent.com/47568606/103482249-dcfd2700-4df0-11eb-9c83-b73355b77f33.png" width="260"></a>

Useful articles:
- https://sarunw.com/posts/how-to-use-proxyman-with-flutter/
