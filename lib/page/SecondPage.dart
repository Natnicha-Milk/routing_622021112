import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'thirdpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _stdId = TextEditingController();
  final TextEditingController _stdName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('กรอกข้อมูลนิสิต'),
            StudentID(),
            Name(),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('ไปหน้าเเรก')),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPsge(
                            stdId: _stdId.text,
                            stdName: _stdName.text,
                          ),
                        ));
                  }
                },
                child: const Text('ยืนยันเเละส่งข้อมูลไปหน้าที่ 3'))
          ],
        ),
      ),
    );
  }

  Widget Name() {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextFormField(
        controller: _stdName,
        validator: (Value) {
          if (Value!.isEmpty) {
            return "Please Enter ID";
          }
          return null;
        },
        decoration: const InputDecoration(
          labelText: 'Student Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32)), //ใส่ขอบกลม
          ),
        ),
      ),
    );
  }

  Widget StudentID() {
    return Container(
      margin: const EdgeInsets.all(8),
      child: TextFormField(
        controller: _stdId,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        validator: (Value) {
          if (Value!.isEmpty) {
            return "Please Enter ID";
          }
          return null;
        },
        decoration: const InputDecoration(
          labelText: 'Student ID',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(32)), //ใส่ขอบกลม
          ),
        ),
      ),
    );
  }
}
