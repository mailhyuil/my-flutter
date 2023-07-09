import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../services/api_service.dart';

class UserListV2 extends StatelessWidget {
  final Future<List<UserModel>> users = ApiService.getUsers();

  UserListV2({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: users,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              var data = snapshot.data![index];
              return Text(data.title);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 20),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
