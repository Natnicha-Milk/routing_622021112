import 'package:flutter/material.dart';

import 'thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('my First'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ไปหน้าเเรก')),
            ElevatedButton(
                onPressed: () {
                  var route = MaterialPageRoute(
                    builder: (context) => ThirdPsge(
                      stdId: '622021112',
                      stdName: 'milk',
                    ),
                  );
                  Navigator.push(context, route);
                },
                child: const Text('ยืนยันเเละส่งข้อมูลไปหน้าที่ 3'))
          ],
        ),
      ),
    );
  }
}
