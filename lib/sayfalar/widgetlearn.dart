import 'package:flutter/material.dart';

class WidgetLearn extends StatelessWidget with customAyarlar {
  WidgetLearn({Key? key}) : super(key: key);

  final String _appbarTitle = 'Appbar';
  final String _butonText = 'TIKLA';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appbarTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          ElevatedButton(
            style: customButtonStyle,
            onPressed: () {},
            child: Padding(
              padding: butonPadding,
              child: Text(
                _butonText,
                style: customTextStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const CircularProgressIndicator()
        ],
      ),
    );
  }
}

class customAyarlar {
  final butonPadding =
      const EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20);
  final customTextStyle =
      const TextStyle(fontSize: 20, fontWeight: FontWeight.w800);

  final customButtonStyle = ElevatedButton.styleFrom(
    shape: const StadiumBorder(),
    primary: Colors.black,
    elevation: 5,
  );
}
