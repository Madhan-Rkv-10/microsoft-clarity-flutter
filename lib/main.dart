// import 'dart:async';

import 'dart:developer';

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
  final _navigatorKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: true,
      onNavigationNotification: (notification) {
        log("Notification$notification");
        return true;
      },
      home: Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Clarity Flutter SDK Example')),
      body: ClarityMask(
        child: Column(
          children: [
            Center(child: Text('Hello, Clarity!')),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => A()));
              },
              child: Text("A to Navigate"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).push(MaterialPageRoute(builder: (context) => A()));
              },
              child: Text("A to Navigate"),
            ),
          ],
        ),
      ),
    );
  }
}

class A extends StatefulWidget {
  const A({super.key});

  @override
  State<A> createState() => _AState();
}

class _AState extends State<A> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
        onPressed: () {
          Navigator.of(
            context,
          ).push(MaterialPageRoute(builder: (context) => B()));
        },
        child: Text("A to Navigate"),
      ),
    );
  }
}

class B extends StatefulWidget {
  const B({super.key});

  @override
  State<B> createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Text("data"));
  }
}
