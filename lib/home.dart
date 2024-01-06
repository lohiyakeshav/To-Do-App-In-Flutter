import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/todo_item.dart';

void main() {
  runApp(const home());
}

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey,
        child: Container(
            padding: EdgeInsets.symmetric(),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Home", style: TextStyle(fontSize: 20)),
                  Text("Archived", style: TextStyle(fontSize: 20)),
                  Text("Deleted", style: TextStyle(fontSize: 20)),
                  Text("Reminder", style: TextStyle(fontSize: 20)),
                ],
              ),
            )),
      ),
      appBar: AppBar(
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Icon(Icons.menu, size: 20),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              height: 50,
              width: 90,
              child: Text("Hehe's"),
            )
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            searchbox(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text("All Items", style: TextStyle(fontSize: 30)),
                  ),
                  ToDoItem()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget searchbox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
        color: Colors.grey, borderRadius: BorderRadius.circular(20)),
    child: const TextField(
        decoration: InputDecoration(
      contentPadding: EdgeInsets.all(0),
      prefixIcon: Icon(
        Icons.search,
        color: Colors.black,
        size: 20,
      ),
      prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
      border: InputBorder.none,
      hintText: "Search",
      hintStyle: TextStyle(fontSize: 20.0, color: Colors.black87),
    )),
  );
}
