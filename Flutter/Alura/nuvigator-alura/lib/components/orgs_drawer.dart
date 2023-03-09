import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../screens/menu_screen.dart';

class OrgsDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MenuScreen()
    );
  }
}