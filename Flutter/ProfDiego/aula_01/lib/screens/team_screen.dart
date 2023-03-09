import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import '../repositories/team_repository.dart';
import '../models/team.dart';
import '../models/championship.dart';
import './add_title_page.dart';
import 'edit_title.dart';

class TeamPage extends StatefulWidget {
  Team team;
  TeamPage({super.key, required this.team});

  @override
  State<TeamPage> createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  titlePage() {
    Get.to(() => AddTitlePage(team: widget.team));
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.team.color,
          title: Text(widget.team.name),
          actions: [
            IconButton(
              onPressed: titlePage,
              icon: Icon(Icons.add),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.stacked_line_chart),
                text: 'Estatísticas',
              ),
              Tab(
                icon: Icon(Icons.emoji_events),
                text: 'Títulos',
              ),
            ],
            indicatorColor: Colors.white,
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Image.network(
                    widget.team.coat_of_arms.replaceAll('40x40', '80x80'),
                  ),
                ),
                Text(
                  'Pontos: ${widget.team.points}',
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                )
              ],
            ),
            championship(),
          ],
        ),
      ),
    );
  }

  Widget championship() {
    final team = Provider.of<TeamRepository>(context)
        .teams
        .firstWhere((t) => t.name == widget.team.name);

    final quantity = team.championships.length;

    return quantity == 0
        ? Container(
            child: const Center(
              child: Text('Sem título!'),
            ),
          )
        : ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: const Icon(Icons.emoji_events),
                title: Text(team.championships[index].championship),
                trailing: Text(widget.team.championships[index].year),
                onTap: () {
                  Get.to(
                    EditTitle(
                      title: team.championships[index],
                    ),
                    fullscreenDialog: true,
                  );
                },
              );
            },
            separatorBuilder: (_, __) => const Divider(),
            itemCount: quantity);
  }
}
