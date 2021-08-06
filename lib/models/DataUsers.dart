class DataUsers {
  String greetings;
  String idUser;
  String userName;
  bool isError;

  DataUsers({this.greetings, this.idUser, this.userName, this.isError});

  factory DataUsers.fromJson(Map<String, dynamic> json, bool isError) {
    return DataUsers(
        greetings: json["greetings"].toString(),
        idUser: json["idUser"].toString(),
        userName: json["userName"].toString(),
        isError: isError);
  }

  factory DataUsers.fromText(String message, bool isError) {
    return DataUsers(
        greetings: message, idUser: "", userName: "", isError: isError);
  }

  String get getGreetings {
    return greetings;
  }

  String get getIdUser {
    return idUser;
  }

  String get getUsername {
    return userName;
  }

  bool get getIsError {
    return isError;
  }
}
