class ApiService {
  bool isProduction = false;
  final String _qaBaseUrl = 'base_url_qa';
  final String _prodBaseUrl = 'base_url_prod';

  //bool isProd = false;

  String _mainBaseUrl = '';

  void toProduction() {
    isProduction = true;
    _mainBaseUrl = _prodBaseUrl;
    // ignore: avoid_print
    print('Api to pointed to Production');
  }

  void toDev() {
    isProduction = false;
    _mainBaseUrl = _qaBaseUrl;
    // _devBaseUrl;
    // ignore: avoid_print
    print('Api to pointed to Dev');
  }

  void toQA() {
    isProduction = false;
    _mainBaseUrl = _qaBaseUrl;
    // ignore: avoid_print
    print('Api to pointed to QA');
  }

  String getBaseUrl() {
    if (_mainBaseUrl.isNotEmpty) return _mainBaseUrl;
    return _qaBaseUrl;
  }
}
