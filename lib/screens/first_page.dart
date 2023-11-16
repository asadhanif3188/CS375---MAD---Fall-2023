import 'package:cs375_first_app/screens/second_page.dart';
import 'package:cs375_first_app/screens/third_page.dart';
import 'package:flutter/material.dart';

import '../models/todo.dart';
import 'detail_screen.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {

    var todos = List.generate(
        20,
            (i) => Todo(
          'Todo $i',
          'A description of what needs to be done for Todo $i',
        ));

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),

      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star),
            title: Text(todos[index].title),
            // When a user taps the ListTile, navigate to the DetailScreen.
            // Notice that you're not only creating a DetailScreen, you're
            // also passing the current todo through to it.
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),

      // body: Center(
      //   child: Column(
      //     children: [
      //       ElevatedButton(
      //         child: const Text('Second Page'),
      //         onPressed: () {
      //           // Navigate to second route when tapped.
      //           // Navigator.push(
      //           //     context,
      //           //     MaterialPageRoute(builder: (context) => const SecondRoute()));
      //
      //           Navigator.pushNamed(context, '/second');
      //         },
      //       ),
      //       SizedBox(height: 10,),
      //
      //       ElevatedButton(
      //         child: const Text('Third Page'),
      //         onPressed: () {
      //           // Navigate to second route when tapped.
      //           // Navigator.push(
      //           //     context,
      //           //     MaterialPageRoute(builder: (context) => const ThirdRoute()));
      //
      //           Navigator.pushNamed(context, '/third');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

