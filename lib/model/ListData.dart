class ListData {
//
  String _success;
  String _terms;
  String _privacy;
  Map _currencies;

  //
  ListData(this._success, this._terms, this._privacy, this._currencies);

  String get success => _success;

  set success(String value) => _success = value;

  String get terms => _terms;

  set terms(String value) => _terms = value;

  String get privacy => _privacy;

  set privacy(String value) => _privacy = value;

  Map get currencies => _currencies;

  set currencies(Map value) => _currencies = value;
}
