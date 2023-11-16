import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map> myProducts = List.generate(50,
            (index) => {"id": index, "name": "Product $index"}).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),

      body: GridView.builder(
          itemCount: 20,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (MediaQuery.of(context).orientation == Orientation.portrait ? 3 : 5)
          ),
          itemBuilder: (BuildContext context, int index){
            return Card(
            child: Icon(Icons.access_time),
              //Text(myProducts[index]['name'])
            );

            //     child: GridTile(
            //         child: Text(myProducts[index]['name']),
            //     ),
            // );

            // return Card(
            //   child: GridTile(
            //     child: Text(myProducts[index]['name'],
            //     style: TextStyle(color: Colors.black, fontSize: 140 ),
            //     ),//Text('Item $index'),
            //   ),
            // );
          }
      )
      // body: Container(
      //   child: GridView.count(
      //     mainAxisSpacing: 5,
      //     crossAxisSpacing: 5,
      //     crossAxisCount: 2,
      //
      //     children: List.generate(50, (index) {
      //       return Container(
      //         margin: EdgeInsets.all(5),
      //         alignment: Alignment.center,
      //         color: Colors.amber,
      //         child: Text(
      //             'Data $index',
      //             style: Theme.of(context).textTheme.headlineSmall,
      //         ),
      //     );
      //     }),
      //     // children: [
      //     //   Container(
      //     //     color: Colors.amber,
      //     //     child: Text('Child 01'),
      //     //   ),
      //     //
      //     //   Container(
      //     //     color: Colors.amber,
      //     //     child: Text('Child 02'),
      //     //   ),
      //     //
      //     //   Container(
      //     //     color: Colors.amber,
      //     //     child: Text('Child 03'),
      //     //   ),
      //     //
      //     //   Container(
      //     //     color: Colors.amber,
      //     //     child: Text('Child 04'),
      //     //   ),
      //     //
      //     //   Container(
      //     //     color: Colors.amber,
      //     //     child: Text('Child 05'),
      //     //   ),
      //     //
      //     //   Container(
      //     //     color: Colors.amber,
      //     //     child: Text('Child 06'),
      //     //   ),
      //     //   //
      //     //   // Text('Child 02'),
      //     //   // Text('Child 03'),
      //     //   // Text('Child 04'),
      //     //   // Text('Child 05'),
      //     //   // Text('Child 06'),
      //     // ],
      //   ),
      // ),
    );
  }
}
