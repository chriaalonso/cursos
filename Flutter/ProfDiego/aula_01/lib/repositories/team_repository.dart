import 'dart:collection';

import 'package:flutter/material.dart';
import '../models/team.dart';
import '../models/championship.dart';

class TeamRepository extends ChangeNotifier {
  final List<Team> _teams = [];

  UnmodifiableListView<Team> get teams => UnmodifiableListView(_teams);

  void titleAdd({Team? team, Championship? championship}) {
    team?.championships.add(championship!);
    notifyListeners();
  }

  TeamRepository() {
    _teams.addAll([
      Team(
        name: 'Flamengo',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/flamengo/logo-flamengo-256.png',
        color: Colors.red,
      ),
      Team(
        name: 'Internacional',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/internacional/logo-internacional-256.png',
        color: Colors.red,
      ),
      Team(
        name: 'Atlético-MG',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/atletico-mineiro/logo-atletico-mineiro-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'São Paulo',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/sao-paulo/logo-sao-paulo-256.png',
        color: Colors.red,
      ),
      Team(
        name: 'Fluminense',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/fluminense/logo-fluminense-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'Grêmio',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/gremio/logo-gremio-256.png',
        color: Colors.blue,
      ),
      Team(
        name: 'Palmeiras',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/palmeiras/logo-palmeiras-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'Santos',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/santos/logo-santos-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'Athletico-PR',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/atletico-paranaense/logo-atletico-paranaense-256.png',
        color: Colors.red,
      ),
      Team(
        name: 'Corinthians',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/corinthians/logo-corinthians-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'Bragantino',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/red-bull-bragantino/logo-red-bull-bragantino-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'Ceará',
        points: 0,
        coat_of_arms: 'https://logodetimes.com/times/ceara/logo-ceara-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'Atlético-GO',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/atletico-goianiense/logo-atletico-goianiense-256.png',
        color: Colors.red,
      ),
      Team(
        name: 'Sport',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/sport-recife/logo-sport-recife-256.png',
        color: Colors.red,
      ),
      Team(
        name: 'Bahia',
        points: 0,
        coat_of_arms: 'https://logodetimes.com/times/bahia/logo-bahia-256.png',
        color: Colors.blue,
      ),
      Team(
        name: 'Fortaleza',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/fortaleza/logo-fortaleza-256.png',
        color: Colors.red,
      ),
      Team(
        name: 'Vasco',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/vasco-da-gama/logo-vasco-da-gama-256.png',
        color: Colors.black,
      ),
      Team(
        name: 'Goiás',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/goias/logo-goias-esporte-clube-512.png',
        color: Colors.green,
      ),
      Team(
        name: 'Coritiba',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/coritiba/logo-coritiba-5.png',
        color: Colors.green,
      ),
      Team(
        name: 'Botafogo',
        points: 0,
        coat_of_arms:
            'https://logodetimes.com/times/botafogo/logo-botafogo-256.png',
        color: Colors.black,
      ),
    ]);
  }
}
