import 'package:flutter/material.dart';

class DiyalogLearn extends StatefulWidget {
  DiyalogLearn({Key? key}) : super(key: key);

  @override
  State<DiyalogLearn> createState() => _DiyalogLearnState();
}

class _DiyalogLearnState extends State<DiyalogLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Diyalog Sayfası')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text('Allert Diyalog '),
                  actions: [
                    ElevatedButton(onPressed: () {}, child: const Text('data'))
                  ],
                );
              });
        },
      ),
    );
  }
}

/** showAboutDialog(
              context: context,
              
              //? Uyarı yazımızın yanında icon koymamızı sağlkıyor
              applicationIcon: const Icon(Icons.info),
              //? Uyarı yazımızı
              applicationName: 'UYARI',
              children: [
                Container(
                  width: 200,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 200,
                  height: 50,
                  color: Colors.green,
                ),
              ]);
        */