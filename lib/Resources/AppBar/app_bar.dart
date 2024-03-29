// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:health/Chat_App/Models/user_models.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final UserModel userModel;
  final User firebaseUser;
  const MyAppBar({
    Key? key,
    required this.userModel,
    required this.firebaseUser,
  }) : super(key: key);
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final _auth = FirebaseAuth.instance;
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset("assets/logo/harees_logo.png")
          // child: CircleAvatar(
          //   backgroundImage: AssetImage("assets/logo/harees_logo.png"),
          // ),
          ),
      // title: Text(
      //   userModel.fullname ?? 'User',
      //   style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
      // ),
      actions: [
        IconButton(
          onPressed: () {
            Drawer();
          },
          icon: Icon(Icons.notifications, color: Color(0xFF50a9c0), size: 30),
        )
      ],
    );
  }
}
