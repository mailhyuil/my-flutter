import 'package:flutter/cupertino.dart';

import '../models/user_model.dart';
import '../services/api_service.dart';

class UserList extends StatefulWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  List<UserModel> users = [];
  bool isLoading = true;

  @override
  void initState() async {
    super.initState();
    users = await ApiService.getUsers();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return const Text('UserList');
  }
}
