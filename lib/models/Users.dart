class Users {
  String userId;
  String password;

  Users(String userId, String password) {
    this.userId = userId;
    this.password = password;
  }

  Map toJson() {
    return {
      'IdUser': userId,
      'Password': password,
    };
  }
}
