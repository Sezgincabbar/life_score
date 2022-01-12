import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './icon_cinsiyet.dart';
import './my_container.dart';
import 'constants.dart';
import 'result_page.dart';
import 'user_data.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? seciliCinsiyet;
  double icilenSigara = 15;
  double sporgunu = 3;
  int boy = 175;
  int kilo = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'YAŞAM BEKLENTİSİ',
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlinedButton('BOY'),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    child: buildRowOutlinedButton('KİLO'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Günde Kaç Sigara İçiyorsunuz?',
                    style: kMetin,
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: kSayi,
                  ),
                  Slider(
                    min: 0,
                    max: 30,
                    value: icilenSigara,
                    onChanged: (double newValue) {
                      setState(() {
                        icilenSigara = newValue;
                      });
                    },
                  ) //Slider()
                ],
              ),
            ),
          ),
          Expanded(
            child: MyContainer(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Kaç Gün Spor Yapıyorsunuz?',
                    style: kMetin,
                  ),
                  Text(
                    sporgunu.round().toString(),
                    style: kSayi,
                  ),
                  Slider(
                    min: 0,
                    max: 7,
                    value: sporgunu,
                    divisions: 7,
                    onChanged: (double newValue) {
                      setState(() {
                        sporgunu = newValue;
                      });
                    },
                  ) //Slider()
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    onPressxx: () {
                      setState(() {
                        seciliCinsiyet = 'ERKEK';
                      });
                    },
                    renk: seciliCinsiyet == 'ERKEK'
                        ? Colors.blueAccent
                        : Colors.white,
                    child: IconCinsiyet(
                      icon: FontAwesomeIcons.venus,
                      cinsiyet: 'ERKEK',
                    ),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPressxx: () {
                      setState(() {
                        seciliCinsiyet = 'KADIN';
                      });
                    },
                    renk: seciliCinsiyet == 'KADIN'
                        ? Colors.pinkAccent
                        : Colors.white,
                    child: IconCinsiyet(
                      cinsiyet: 'KADIN',
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(UserData(
                          boy: boy,
                          icilenSigara: icilenSigara,
                          kilo: kilo,
                          seciliCinsiyet: seciliCinsiyet,
                          sporgunu: sporgunu))));
            },
            child: Text(
              'HESAPLA',
              style: kMetin,
            ),
          ),
        ],
      ),
    );
  }

  Row buildRowOutlinedButton(String label) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label,
            style: kMetin,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            label == 'BOY' ? boy.toString() : kilo.toString(),
            style: kSayi,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  label == 'BOY' ? boy++ : kilo++;
                });
              },
              child: FaIcon(FontAwesomeIcons.plus),
            ),
            OutlinedButton(
              onPressed: () {
                setState(() {
                  label == 'BOY' ? boy-- : kilo--;
                });
              },
              child: FaIcon(FontAwesomeIcons.minus),
            ),
          ],
        )
      ],
    );
  }
}
