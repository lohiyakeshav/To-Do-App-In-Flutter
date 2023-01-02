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
      appBar: AppBar(
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu, size: 20),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: 50,
                  width: 80,
                  child: Text("Hehe's"),
                  // child: ClipRect(
                  //   child: Image.asset('assets/images/hehe.jpg'),
                  // )
              )
            ],
          )),
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
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
                  ToDoItem(),
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
        color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
