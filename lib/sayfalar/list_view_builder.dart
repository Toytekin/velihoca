import 'package:flutter/material.dart';

class ListVievBuilderLearn extends StatefulWidget {
  ListVievBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListVievBuilderLearn> createState() => _ListVievBuilderLearnState();
}

String _appbartitile = 'ListViev Builder Learn';
String _listtext = 'ListViev Builder';

class _ListVievBuilderLearnState extends State<ListVievBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(_appbartitile, style: Theme.of(context).textTheme.headline5),
      ),
      body: SafeArea(
        //Listvev kullanmım
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Text(
              index.toString(),
              style: Theme.of(context).textTheme.headline1,
            );
          },
          //Listviev içerisinde nekadar ittem bulunacağını belirliyorz
          itemCount: 50,
        ),
      ),
    );
  }
}
