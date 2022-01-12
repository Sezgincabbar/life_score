import 'user_data.dart';

class Hesap {
  UserData _userData;

  Hesap(this._userData);

  double hesaplama() {
    double? sonuc;
    sonuc = 90 + _userData.sporgunu! - _userData.icilenSigara!;
    sonuc = sonuc + (_userData.boy! / _userData.kilo!);

    _userData.seciliCinsiyet == 'KADIN' ? sonuc + 3 : sonuc + 1;
    return sonuc;
  }
}
