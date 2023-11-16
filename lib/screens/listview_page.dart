import 'package:flutter/material.dart';
class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Demo"),
      ),

      body: Container(
        child: ListView(
          children: [
            _tile("Map", 'Google Map', Icons.map),
            _tile("Map", 'Google Map', Icons.map),
            _tile("Map", 'Google Map', Icons.map),
            _tile("Map", 'Google Map', Icons.map),

            ListTile(
              leading: Icon(Icons.book),
              title: Text("Books"),
              subtitle: Text("Are missing"),
              trailing: Icon(Icons.arrow_right),
            ),

            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text("User"),
              trailing: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }

  ListTile _tile(String mytitle, String mysubtitle, IconData myicon) {
    return ListTile(
      title: Text(mytitle),
      subtitle: Text(mysubtitle),
      leading: Icon(myicon),
    );
  }
}
