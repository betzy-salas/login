class Token {
  String token;
  String language;

  Token(String token, String language) {
    this.token = token;
    this.language = language;
  }

  Map toJson() {
    return {'token': token, 'language': language};
  }

  String get getToken {
    return token;
  }

  String get getLanguage {
    return language;
  }
}
