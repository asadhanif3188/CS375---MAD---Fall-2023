import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery Page'),
      ),

      body: Column(
        children: [
          Expanded(
              child: Image.asset('assets/images/asad1.jpeg')
          ),
          SizedBox(height: 5,),
          Expanded(
            child: Image.asset('assets/images/asad2.jpg'),
          ),
          Expanded(
            child: Image.network('https://picsum.photos/250?image=9'),
          ),
        ],
      ),
    );
  }
}
