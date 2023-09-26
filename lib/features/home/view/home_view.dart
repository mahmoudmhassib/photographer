import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photographer/features/home/view/widget/home_view_body.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {

    return  Scaffold (
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
