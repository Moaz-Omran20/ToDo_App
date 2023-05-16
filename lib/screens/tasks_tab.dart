import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/widgets/task_item.dart';

class TasksTab extends StatefulWidget {
  const TasksTab({Key? key}) : super(key: key);

  @override
  State<TasksTab> createState() => _TasksTabState();
}

DateTime selectDate = DateTime.now();

class _TasksTabState extends State<TasksTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          DateTime.now(),
          height: 100,
          initialSelectedDate: DateTime.now(),
          selectionColor: Theme.of(context).primaryColor,
          selectedTextColor: Colors.white,
          onDateChange: (date) {
            // New date selected
            setState(() {
              selectDate = date;
            });
          },
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskItem();
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
