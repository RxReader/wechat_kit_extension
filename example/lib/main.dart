import 'package:flutter/material.dart';
import 'package:wechat_kit_extension/wechat_kit_extension.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('wechat_kit_extension example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                WechatExtension.getAccessToken(
                  appId: 'REPLACE_YOUR_APP_ID',
                  appSecret: 'REPLACE_YOUR_APP_SECRET',
                );
              },
              child: const Text('getAccessToken'),
            ),
          ],
        ),
      ),
    );
  }
}
