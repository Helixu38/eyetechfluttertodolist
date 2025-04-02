import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  final String title;
  bool isDone;
  final Function(bool?) onChanged;

  TaskTile({
    required this.title,
    required this.isDone,
    required this.onChanged,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.title),
      leading: Checkbox(
        value: widget.isDone,
        onChanged: (bool? value) {
        setState(() {
          widget.isDone = value!;
        });
      },
      ),
    );
  }
}