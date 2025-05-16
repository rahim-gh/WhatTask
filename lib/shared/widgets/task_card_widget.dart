import 'package:flutter/material.dart';
import 'package:what_task/core/configs/colors_config.dart';

class TaskCardWidget extends StatefulWidget {
  const TaskCardWidget({super.key});

  @override
  State<StatefulWidget> createState() =>
      _TaskCardWidgetState();
}

class _TaskCardWidgetState extends State<TaskCardWidget> {
  _TaskCardWidgetState();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        color: Theme.of(context).colorScheme.secondary,
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'title of task',
                    style: TextStyle(
                      color:
                          Theme.of(
                            context,
                          ).colorScheme.primary,
                    ),
                  ),
                  SizedBox(height: 8),
                  LinearProgressIndicator(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
