import '../models/team.dart';
import '../models/championship.dart';
import '../repositories/team_repository.dart';

class HomeController {
  TeamRepository teamRepository = TeamRepository();

  List<Team> get table => teamRepository.teams;

  HomeController() {
    teamRepository = TeamRepository();
  }
}
