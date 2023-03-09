import 'package:aula_01/repositories/team_repository.dart';
import 'package:aula_01/screens/team_screen.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

import '../models/team.dart';

import '../controllers/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller;

  @override
  void initState() {
    super.initState();
    controller = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Brasileirão'),
      ),
      body: Consumer<TeamRepository>(
        builder: (context, repository, child) {
          return ListView.separated(
            itemCount: repository.teams.length,
            itemBuilder: (BuildContext context, int team) {
              final List<Team> table = repository.teams;
              return ListTile(
                leading: Image.network(table[team].coat_of_arms),
                title: Text(table[team].name),
                subtitle: Text('Títulos: ${table[team].championships.length}'),
                trailing: Text(table[team].points.toString()),
                onTap: () {
                  Get.to(
                    () => TeamPage(
                      key: Key(table[team].name),
                      team: table[team],
                    ),
                  );
                },
              );
            },
            separatorBuilder: (_, __) => Divider(),
            padding: const EdgeInsets.all(16),
          );
        },
      ),
    );
  }
}
