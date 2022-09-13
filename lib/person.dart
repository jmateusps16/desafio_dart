class Person {
  final String _name;
  String get name => _name;
  final int _document;
  int get document => _document;
  final String _streetAd;
  String get street => _streetAd;
  final String _numberAd;
  String get number => _numberAd;
  final String _complementAd;
  String get complement => _complementAd;
  final String _districtAd;
  String get district => _districtAd;
  final String _cityAd;
  String get city => _cityAd;
  final String _stateAd;
  String get state => _stateAd;
  final String _cepAd;
  String get cep => _cepAd;

  Person(
      this._name,
      this._document,
      this._streetAd,
      this._numberAd,
      this._complementAd,
      this._districtAd,
      this._cityAd,
      this._stateAd,
      this._cepAd);
}
