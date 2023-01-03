import 'package:flutter/material.dart';

class ToDoItem extends StatelessWidget {
  const ToDoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print("Chl raha hai");
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white54,
        leading: Icon(Icons.check_box, color: Colors.blue),
        title: Text('Kuch Toh Krle Saale',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                decoration: TextDecoration.lineThrough
            )
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            icon: Icon(Icons.delete, color: Colors.grey,
            ),
            onPressed: () {
              print('delete press kiya tune saale, nice');
            },
          ),
        ),
      ),
    );
  }
}
