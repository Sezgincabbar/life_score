import 'package:flutter/material.dart';

import 'constants.dart';
import 'hesap.dart';
import 'my_container.dart';
import 'user_data.dart';

class ResultPage extends StatelessWidget {
  final UserData _userData;

  ResultPage(this._userData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'SONUÇ SAYFASI',
            style: kMetin,
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        'YAŞAM SÜRESİ',
                        style: kMetin,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        Hesap(_userData).hesaplama().round().toString(),
                        style: kSayi,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        'CİNSİYET',
                        style: kMetin,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        _userData.seciliCinsiyet.toString(),
                        style: kSayi,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        'BOY',
                        style: kMetin,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        _userData.boy.toString(),
                        style: kSayi,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        'KİLO',
                        style: kMetin,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        _userData.kilo.toString(),
                        style: kSayi,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        'SİGARA SAYISI',
                        style: kMetin,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        _userData.icilenSigara!.round().toString(),
                        style: kSayi,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        'SPOR GÜN SAYISI',
                        style: kMetin,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: Center(
                      child: Text(
                        _userData.sporgunu.toString(),
                        style: kSayi,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Geri Dön', style: kMetin),
            ),
          ),
        ],
      ),
    );
  }
}
