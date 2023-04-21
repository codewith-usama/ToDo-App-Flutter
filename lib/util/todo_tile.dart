import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';


class ToDoTile extends StatelessWidget {
  ToDoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    // required this.formattedDate,
    required this.onChanged,
    required this.onPressed,
});
  final String taskName;
  final bool taskCompleted;
  // final String formattedDate;
  Function (bool?)? onChanged;
  Function (BuildContext)? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: onPressed,
              backgroundColor: Colors.red.shade300,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            color: Colors.purple,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: taskCompleted,
                    onChanged: onChanged,
                    activeColor: Colors.black,
                  ),
                  Text(
                    taskName,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                      decoration: taskCompleted ? TextDecoration.lineThrough: TextDecoration.none,
                    ),
                  )
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 48.0),
              //   child: Text(
              //     formattedDate,
              //     style: const TextStyle(
              //         fontSize: 12.0,
              //     ),
              //   ),
              // ),
            ]
          ),
        ),
      ),
    );
  }
}
