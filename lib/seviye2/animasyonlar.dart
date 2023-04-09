import 'package:flutter/material.dart';

class AnimasyonSayfasiLearn extends StatefulWidget {
  AnimasyonSayfasiLearn({Key? key}) : super(key: key);

  @override
  State<AnimasyonSayfasiLearn> createState() => _AnimasyonSayfasiLearnState();
}

class _AnimasyonSayfasiLearnState extends State<AnimasyonSayfasiLearn>
    with TickerProviderStateMixin {
  //!Değişkenler

  late AnimationController controller;

  bool _isVisible = false;
  bool _isOpacity = false;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    //Text('Merhabalar', style: context.textTheme().headline2)

    void _chanceVisible() {
      setState(() {
        _isVisible = !_isVisible;
      });
    }

    void _chanceOpacity() {
      setState(() {
        _isOpacity = !_isOpacity;
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animasyon Learn'),
      ),

      body: Column(
        children: [
          //? Animasyonlu bir şekilde opacityi ayarladığımız alan
          //?Bununla opacity ayarlanıyor
          //? Öncelikle setstate içerisinde bool yun değerimizi false ise
          //? true , true ise false yapacak bir methot yazıyorz daha sonra bunu ilkgili butona atıyorz.
          //? Alınan propartiler  opacity ve durarion .
          //? _isOpacity ? 1 : 0, ==> opacity durumu false ise 1(yani görünür yap) tru ise 0(yani görünmez yap)
          AnimatedOpacity(
            opacity: _isOpacity ? 1 : 0,
            duration: const Duration(seconds: 1),
            child: ListTile(
              subtitle: AnimatedOpacity(
                  opacity: _isOpacity ? 1 : 0,
                  duration: const Duration(seconds: 1),
                  child: const Text('Subtitle bşlığı')),
              title: const Text('Merhabalar'),
              trailing: IconButton(
                  onPressed: () {
                    _chanceOpacity();
                  },
                  icon: const Icon(
                    Icons.change_circle,
                    size: 40,
                  )),
            ),
          ),
          const SizedBox(height: 50),
          //? Bununla textlerimizin tüm stylenı değiştirebiliyorz
          //? 3 önemli propartisi var
          //? child ==>Text in yazıldığı alan
          //?  style ==> duruma göre değişicek stil
          //?   duration ==> kaç saniyede olacak
          AnimatedDefaultTextStyle(
              child: const Text('AnimatedDefaultTextStyle'),
              style: (_isVisible
                      ? Theme.of(context).textTheme.subtitle1
                      : Theme.of(context).textTheme.headline4) ??
                  TextStyle(),
              duration: const Duration(seconds: 1)),
          const SizedBox(height: 50),
          //? 3 önemli nokta var
          //? icon ===> Burada iconumuzu veriyoruz
          //? progress ==> Bu alana geldiğimizde yukarıda AnimationController belirleyip initstatte çağırıyorz
          //? Butona tıklama eventine gidip belirlediğiömiz controller üzerinden animasyon kontrolu yapıyoruz.
          AnimatedIcon(icon: AnimatedIcons.view_list, progress: controller),
          const SizedBox(height: 50),
          AnimatedContainer(
            width: _isVisible ? 200 : 50,
            height: _isVisible ? 200 : 50,
            color: _isVisible ? Colors.red : Colors.green,
            duration: const Duration(seconds: 1),
          ),
        ],
      ),
      //
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          _chanceVisible();
          _chanceOpacity();
          //? AnimatedIcon durumunu konrtrol ediyorz
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
    );
  }
}

// 2 Widget arasında animasyon yapmamızı sağlayan yapı  ==>
// //!AnimatedCrossFade
//Bununlşa floatinacton bara tıkladığımızda containerımız animasyonlu bir
//şekilde değişecek
class animatedcrosfade extends StatelessWidget {
  const animatedcrosfade({
    Key? key,
    required bool isVisible,
  })  : _isVisible = isVisible,
        super(key: key);

  final bool _isVisible;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: Container(width: 200, height: 200, color: Colors.green),
      secondChild: Container(
        width: 200,
        height: 200,
        color: Colors.white,
      ),

      //İki durum arasındaki olayı yazıyorz
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(seconds: 1),
    );
  }
}

//Contexti çekeceğiz bir extension yazıyorz

extension BuilContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

/**
 * Container(
        width: 200,
        height: 200,
        color: _isVisible ? Colors.green : null,
      )
       */
