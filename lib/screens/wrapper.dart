import 'package:famoney/screens/auth/authenticate.dart';
import 'package:famoney/screens/home/home.dart';
// import 'package:famoney/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:famoney/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if(user == null){
      return Authenticate();
    } else {
      return Home();
    }
  }
}