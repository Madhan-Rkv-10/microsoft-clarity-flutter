import 'dart:async';

import 'package:flutter/material.dart';
import 'package:clarity_flutter/clarity_flutter.dart';

void main() {
  final config = ClarityConfig(
    projectId: "s81pnbnm7p",
    userId: "",
    logLevel: LogLevel
        .None, // Note: Use "LogLevel.Verbose" value while testing to debug initialization issues.
  );

  runApp(ClarityWidget(app: MyApp(), clarityConfig: config));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Clarity Flutter SDK Example')),
        body: ClarityMask(
          child: Column(children: [Center(child: Text('Hello, Clarity!'))]),
        ),
      ),
    );
  }
}
