class Endpoints {
  static const String movieCollections =
      'http://10.0.2.2:5039/api/MovieCollections';

  static const String rooms = 'http://10.0.2.2:5039/api/Rooms';

  static const String genres = 'http://10.0.2.2:5039/api/Genres';

  static const String Tokens = 'http://10.0.2.2:5039/api/Tokens';

  static const String Users = 'http://10.0.2.2:5039/api/Users';
  // receiveTimeout
  static const int receiveTimeout = 15000;

  // connectTimeout
  static const int connectionTimeout = 30000;
}
