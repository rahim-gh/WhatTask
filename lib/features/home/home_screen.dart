import 'package:flutter/material.dart';
import 'package:what_task/shared/widgets/task_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _HomeScreenState();

  @override
  Widget build(BuildContext context) {
    return ListView(
      key: widget.key,
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      children: [
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
        TaskCardWidget(),
      ],
    );
  }
}
