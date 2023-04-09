import 'package:flutter/material.dart';

class TabBarLearn extends StatefulWidget {
  TabBarLearn({Key? key}) : super(key: key);

  @override
  State<TabBarLearn> createState() => _TabBarLearnState();
}

class _TabBarLearnState extends State<TabBarLearn> {
  final String _tabbarTitle = 'TabBar Learn';

  @override
  Widget build(BuildContext context) {
    //Tabbarda Scafolda başlatmıyorz
    return DefaultTabController(
      //TabBar da kaç item bulunduğunu buraya yazıyoz
      length: 2,
      child: Scaffold(
        //FloatinActionbr derinliği ayarlama
        extendBody: true,

        //Flotonaction bar
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(
            Icons.home,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        //FloatingActionButton yerini belirleme
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        //Alt taerafda TabBar tanımlama
        bottomNavigationBar: BottomAppBar(
          //FloatinActionBar'a derinlik veriyorz
          shape: const CircularNotchedRectangle(),
          child: SafeArea(
            child: TabBar(
              padding: const EdgeInsets.only(top: 10),
              unselectedLabelColor: Colors.white,
              labelColor: Colors.green,
              tabs: [
                Text('Sayfa 1', style: Theme.of(context).textTheme.headline6),
                Text('Sayfa 2', style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ),
        ),
        // Üst tarafta appbar tanımlama
        appBar: AppBar(
          title: Text(_tabbarTitle),
          bottom: const TabBar(
            tabs: [
              Text('Sayfa 1'),
              Text('Sayfa 2'),
            ],
          ),
        ),

        //tabbar içinde yer alacak sayfalar
        body: TabBarView(children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          )
        ]),
      ),
    );
  }
}
