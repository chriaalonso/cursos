import 'package:flutter/material.dart';
import '../components/orgs_cards_list.dart';
import '../components/orgs_drawer.dart';
import '../components/orgs_stores_card.dart';
import '../core/app_colors.dart';
import '../core/app_images.dart';
import '../models/producer_model.dart';
import '../repository/data.dart';
import '../screens/producer_details_screen.dart';

class FavoritesScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: OrgsDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produtores favoritos',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: AppColors.darkGrey),
                  ),
                  IconButton(
                    color: Colors.transparent,
                    icon: Icon(Icons.menu, color: AppColors.green),
                    onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                'Produtores que você favoritou',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: FutureBuilder(
                  future: _generateProducerList(context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: snapshot.data,
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future _generateProducerList(BuildContext context) async {
    List<Widget> children = [];
    final data = await Data.getJson();
    final producers = data["producers"];

    for (final producer in producers.keys) {
      final prod = Producer.fromJson(producers[producer]);

      children.add(OrgsStoresCard(
        action: () => Navigator.pushNamed(
          context,
          'producer-details',
          arguments: prod,
        ),
        img: prod.logo,
        distance: prod.distance,
        title: prod.name,
      ));

      children.add(const SizedBox(height: 10));
    }

    return children;
  }
}
