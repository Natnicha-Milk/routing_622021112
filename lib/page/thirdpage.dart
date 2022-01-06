import 'package:flutter/material.dart';

class ThirdPsge extends StatefulWidget {
  const ThirdPsge({Key? key, this.stdId, this.stdName}) : super(key: key);

  final String? stdId;
  final String? stdName;

  @override
  _ThirdPsgeState createState() => _ThirdPsgeState();
}

class _ThirdPsgeState extends State<ThirdPsge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Th'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('รหัสนิสิต' + widget.stdId!),
            Text('รหัสนิสิต' + widget.stdName!),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ไปหน้าที่2')),
          ],
        ),
      ),
    );
  }
}
