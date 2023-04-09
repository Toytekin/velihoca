import 'package:flutter/material.dart';

class PageViewLearn extends StatelessWidget {
  PageViewLearn({Key? key}) : super(key: key);
  final String _appbarTitle = 'PageView Learn';
  final String _listtileTitle = 'Başlık';
  final _pagecontroller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appbarTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              _pagecontroller.nextPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOutQuint);
            },
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              _pagecontroller.previousPage(
                  duration: const Duration(seconds: 1),
                  curve: Curves.easeInOutCubicEmphasized);
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      //!Sayfaarın er aldığı widget
      body: PageView(controller: _pagecontroller, children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              kart(listtileTitle: _listtileTitle),
              kart(listtileTitle: _listtileTitle),
              kart(listtileTitle: _listtileTitle),
              kart(listtileTitle: _listtileTitle),
              kart(listtileTitle: _listtileTitle),
              kart(listtileTitle: _listtileTitle),
              kart(listtileTitle: _listtileTitle),
            ],
          ),
        ),
        Container(color: Colors.pink),
        Container(color: Colors.blue),
        Container(color: Colors.yellow),
      ]),
    );
  }
}

class kart extends StatelessWidget {
  const kart({
    Key? key,
    required String listtileTitle,
  })  : _listtileTitle = listtileTitle,
        super(key: key);

  final String _listtileTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        trailing: const Icon(Icons.folder),
        title: Padding(
            padding: const EdgeInsets.all(20.0), child: Text(_listtileTitle)),
      ),
    );
  }
}
