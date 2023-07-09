class UserModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  UserModel.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        body = json['body'];
}
