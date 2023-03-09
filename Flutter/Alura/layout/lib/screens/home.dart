import 'package:flutter/material.dart';
import 'package:layout/components/sections/account_actions.dart';
import 'package:layout/components/sections/header.dart';
import 'package:layout/components/sections/recent_activity.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alubank'),
      ),
      body: Column(
        children: const <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
        ],
      ),
    );
  }
}
