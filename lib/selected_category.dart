import 'package:flutter/material.dart';

class SelectedCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final titlee = routeArgs['title'];
    final id = routeArgs['id'];
    final appbarr = AppBar(
      title: Text(titlee),
    );
    return Scaffold(
      appBar: appbarr,
      body: Center(
        child: Text(
          id,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
