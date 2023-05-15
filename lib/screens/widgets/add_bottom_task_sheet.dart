import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  String date = DateTime.now().toString().substring(0, 10);

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add new task",
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              validator: (value) {
                if(value==null || value.isEmpty)
                  {
                    return "Please Enter Task Title";
                  }
              },

              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                label: Text(
                  "Task title",
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontWeight: FontWeight.normal),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              validator: (value) {
                if(value == null || value.isEmpty)
                  {
                    return "Please Enter Task Description";
                  }
              },
              maxLines: 3,
              decoration: InputDecoration(
                label: Text(
                  "Task description ",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                enabled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              child: Text("Select date",
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(onTap: ChooseDate, child: Text(date)),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 40,
              width: 90,
              child: ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate())
                    {

                    }
                },
                child: const Text("Add task"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ChooseDate() async {
    var selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
    );
    if(selectedDate != null)
      {
        date = selectedDate.toString().substring(0,10);
        setState(() {

        });
      }
  }
}
