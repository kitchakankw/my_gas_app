import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWebApp(),
  ));
}

class MyWebApp extends StatefulWidget {
  const MyWebApp({super.key});

  @override
  State<MyWebApp> createState() => _MyWebAppState();
}

class _MyWebAppState extends State<MyWebApp> {
  // ใส่ลิงก์ Google Apps Script ของคุณที่นี่
  final String gasUrl = "https://script.google.com/macros/s/AKfycbwjyKMhZMZmjZWrO6klfale4TpV8LuVIZKWd454m2q7UKQihmg_LKESfRmsR3I9s7Qo/exec";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: InAppWebView(
          initialUrlRequest: URLRequest(url: WebUri(gasUrl)),
          initialSettings: InAppWebViewSettings(
            javaScriptEnabled: true,          // เปิดใช้งาน JavaScript เพื่อให้หน้าเว็บทำงานได้
            useHybridComposition: true,      // ช่วยให้การแสดงผลบน Android ลื่นขึ้น
            allowsInlineMediaPlayback: true,
          ),
        ),
      ),
    );
  }
}