import 'package:flutter/material.dart';

class ListTileLearn extends StatelessWidget with CustomWidgetlar {
  ListTileLearn({Key? key}) : super(key: key);

  final String _appbarTitle = 'Bu Liste uygulaması benim';
  final String _listtileTitle = 'Listelerın başı';
  final String _listtileSubTitle = 'Subtitle';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_appbarTitle)),
      body: Column(
        children: [
          Kart(
              listtileTitle: _listtileTitle,
              listtileSubTitle: _listtileSubTitle,
              titleLeadingIcons: titleLeadingIcons,
              titletrailingIcons: titletrailingIcons),
          Kart(
              listtileTitle: _listtileTitle,
              listtileSubTitle: _listtileSubTitle,
              titleLeadingIcons: titleLeadingIcons,
              titletrailingIcons: titletrailingIcons),
          Kart(
              listtileTitle: _listtileTitle,
              listtileSubTitle: _listtileSubTitle,
              titleLeadingIcons: titleLeadingIcons,
              titletrailingIcons: titletrailingIcons),
          Kart(
              listtileTitle: _listtileTitle,
              listtileSubTitle: _listtileSubTitle,
              titleLeadingIcons: titleLeadingIcons,
              titletrailingIcons: titletrailingIcons),
        ],
      ),
    );
  }
}

class Kart extends StatelessWidget {
  const Kart({
    Key? key,
    required String listtileTitle,
    required String listtileSubTitle,
    required this.titleLeadingIcons,
    required this.titletrailingIcons,
  })  : _listtileTitle = listtileTitle,
        _listtileSubTitle = listtileSubTitle,
        super(key: key);

  final String _listtileTitle;
  final String _listtileSubTitle;
  final Icon titleLeadingIcons;
  final Icon titletrailingIcons;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(_listtileTitle),
        subtitle: Text(_listtileSubTitle),
        leading: titleLeadingIcons,
        trailing: titletrailingIcons,
        onTap: () {},
      ),
    );
  }
}

class CustomWidgetlar {
  final titleLeadingIcons = const Icon(Icons.expand);
  final titletrailingIcons = const Icon(Icons.abc_outlined);
}
