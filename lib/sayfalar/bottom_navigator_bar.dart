import 'package:dersler/sbitler/yazilar.dart';
import 'package:flutter/material.dart';

class BottomNavigateBarLearn extends StatefulWidget {
  BottomNavigateBarLearn({Key? key}) : super(key: key);

  @override
  State<BottomNavigateBarLearn> createState() => _BottomNavigateBarLearnState();
}

Color _arkaplanRengi = Colors.red;

class _BottomNavigateBarLearnState extends State<BottomNavigateBarLearn> {
  //Rengi ayarlanması
  void renginAyarlanmasi(Color color) {
    setState(() {
      _arkaplanRengi = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _arkaplanRengi,
      appBar: AppBar(title: const Text(Yazilar.appbarTitleNavigatBar)),
      bottomNavigationBar: BottomNavigationBar(
        // Iconlara tıklandığında neler yapacağını belirlediğimiz alan
        onTap: (value) {
          if (value == 0) {
            renginAyarlanmasi(Colors.red);
          } else if (value == 1) {
            renginAyarlanmasi(Colors.yellow);
          } else {
            renginAyarlanmasi(Colors.blue);

            setState(() {});
          }
        },
        items: const [
          //En az 2 item eklemezsek Hata alırız
          BottomNavigationBarItem(
              icon: Icon(Icons.color_lens, color: Colors.red),
              label: 'Kırmızı'),
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens, color: Colors.yellow),
            label: 'Sarı',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.color_lens,
                color: Colors.blue,
              ),
              label: 'Mavi'),
        ],
      ),
    );
  }
}
