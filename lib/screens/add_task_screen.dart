import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30.0,),
              Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.blue.shade300,
                    fontSize: 35.0,
                  ),
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                cursorColor: Colors.blue.shade300,
                onChanged: (newText) {
                  newTaskTitle = newText;
                },
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                ),
                child: const Text('Add'),
              ),
              const SizedBox(height: 40.0,),
            ],
          ),
        ),
      ),
    );
  }
}
