import 'package:flutter/material.dart';

class BottomSheetLearn extends StatefulWidget {
  BottomSheetLearn({Key? key}) : super(key: key);

  @override
  State<BottomSheetLearn> createState() => _BottomSheetLearnState();
}

class _BottomSheetLearnState extends State<BottomSheetLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BottomSheet Learn')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //!   A Ç I  K L A M A
          //? boottomshet de dikkat edilmesi gereken 2 proparti var
          //? context
          //? builder ==> builder kısmını yaparken ne return yapacağımıza
          //? çok dikkat etmeliyiz.

          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Column(
                  children: [
                    Text('Merhabalar'),
                    Container(
                      height: 200,
                      width: 300,
                      color: Colors.amber,
                      child: Text('Merhabalar'),
                    ),
                    TextButton(
                        onPressed: () {}, child: const Text('Birtane daha aç'))
                  ],
                );
              });
        },
      ),
    );
  }
}
