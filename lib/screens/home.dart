import 'package:flutter/material.dart';
import 'package:fluttermaterial/provider/user_provider.dart';
import 'package:fluttermaterial/screens/product_details.dart';
import 'package:fluttermaterial/widgets/custom_app_bar.dart';
import 'package:fluttermaterial/widgets/product_card.dart';
import 'package:fluttermaterial/widgets/featured_products.dart';
import 'package:fluttermaterial/widgets/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          CustomAppBar(),
          Search(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('Featured products'),
                ),
              )
            ],
          ),
          FeaturedProducts(),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: new Text('Recent products'),
                ),
              )
            ],
          ),
          ProductCard(
            brand: 'SantosBrand',
            name: 'Lux Blazer',
            price: 24.00,
            onSale: true,
            picture: '',
          ),
          ProductCard(
            brand: 'SantosBrand',
            name: 'Lux Blazer',
            price: 24.00,
            onSale: true,
            picture: '',
          ),
          ProductCard(
            brand: 'SantosBrand',
            name: 'Lux Blazer',
            price: 24.00,
            onSale: true,
            picture: '',
          ),
        ],
      )),
    );
  }
}
