import 'package:aula_01/repositories/team_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';
import '../models/team.dart';
import '../models/championship.dart';

class EditTitle extends StatefulWidget {
  Title title;
  EditTitle({super.key, required this.title});

  @override
  State<EditTitle> createState() => _EditTitleState();
}

class _EditTitleState extends State<EditTitle> {
  final _championship = TextEditingController();
  final _year = TextEditingController();
  final _formkey = TextEditingController();

  @override
  void initState() {
    super.initState();
    _year.text = widget.title.year;
    _championship.text = widget.title.championship;
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
