import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header')
            ),

            ListTile(
              title: Text('OOP'),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Fluttertoast.showToast(
                    msg: "This message is sent by OOP",
                    // toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    // timeInSecForIosWeb: 1,
                    // backgroundColor: Colors.red,
                    // textColor: Colors.white,
                    fontSize: 16.0
                );

              },
            ),

            ListTile(
              title: Text('DSA'),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Fluttertoast.showToast(
                    msg: "This message is sent by DSA",
                    // toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    // timeInSecForIosWeb: 1,
                    // backgroundColor: Colors.red,
                    // textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),

            Divider(),
            
            ListTile(
              title: Text('MAD'),
              leading: Icon(Icons.star),
              trailing: Icon(Icons.arrow_right),
              onTap: (){
                Fluttertoast.showToast(
                    msg: "This message is sent by MAD",
                    // toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    // timeInSecForIosWeb: 1,
                    // backgroundColor: Colors.red,
                    // textColor: Colors.white,
                    fontSize: 16.0
                );
              },
            ),

          ],
        ),
      ),
      body: Placeholder(),
    );
  }
}
