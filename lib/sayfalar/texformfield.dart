import 'package:flutter/material.dart';

class TextFormFieldLearnPage extends StatefulWidget {
  const TextFormFieldLearnPage({Key? key}) : super(key: key);

  @override
  State<TextFormFieldLearnPage> createState() => _TextFormFieldLearnPageState();
}

String _appbarTitle = 'Textformfield';

class _TextFormFieldLearnPageState extends State<TextFormFieldLearnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appbarTitle)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Textformfield(),
        ],
      ),
    );
  }
}

class Textformfield extends StatelessWidget {
  const Textformfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextField(

          //Girilecek maximum karakter sayısını belirleme
          maxLength: 20,

          //Girilen karakterlere göre kastım dzüenlemelerin
          //yapıldığı alan
          buildCounter: (BuildContext context,
              {int? currentLength, required bool isFocused, int? maxLength}) {
            return Container(
                height: 10,
                width: 10 + (currentLength! * 10),
                color: Colors.green);
          },

          //Dekorasyonlar
          decoration: SabitDecorasyonlar().sabitTextDecorasyon),
    );
  }
}

class SabitDecorasyonlar {
  final sabitTextDecorasyon = const InputDecoration(

      //Arka plan renginini ayarlandığı alan
      fillColor: Colors.orange,
      filled: true,

      //label textin stlni ayarlama
      labelStyle: TextStyle(
          color: Colors.red, fontWeight: FontWeight.w500, fontSize: 30),

      //Label
      label: Text('Mail'),

      //Çerçeve Ayarlama
      border: OutlineInputBorder(),

      //Baş tarafa icon gelmesi
      prefixIcon: Icon(
        Icons.mail,
        color: Colors.red,
      ));
}
