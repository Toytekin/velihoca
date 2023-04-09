import 'package:flutter/material.dart';

class FormFieldLearn extends StatefulWidget {
  FormFieldLearn({Key? key}) : super(key: key);

  @override
  State<FormFieldLearn> createState() => _FormFieldLearnState();
}

class _FormFieldLearnState extends State<FormFieldLearn> {
  //!  A Ç I  K L A M A
  //?key ler ile Form üzerinde yönetimini sağllıyorz
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_key.currentState?.validate() ?? false) {
            print('okey');
          }
        },
      ),
      appBar: AppBar(title: const Text('TextFormField Learn')),
      body: Form(
        //!  A Ç I  K L A M A

        //?key ler ile yönetimini sağllıyorz
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                return (value?.isNotEmpty ?? false)
                    ? null
                    : 'Bu alan boş geçilemez';
              },
            ),
          ],
        ),
      ),
    );
  }
}
