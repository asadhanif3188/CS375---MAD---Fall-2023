import 'package:cs375_first_app/screens/selection_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Returning Data Demo'),
      ),
      // Create the SelectionButton widget in the next step.
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final result = await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SelectionScreen() )
              );

              // When a BuildContext is used from a StatefulWidget, the mounted property
              // must be checked after an asynchronous gap.
              if (!mounted) return;

              // After the Selection Screen returns a result, hide any previous snackbars
              // and show the new result.
              ScaffoldMessenger.of(context)
                ..removeCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text('$result')));
            },
            child: Text('Pick an option'),
        )
      ),
    );
  }
}


// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Returning Data Demo'),
//       ),
//       // Create the SelectionButton widget in the next step.
//       body: Center(
//         child: ElevatedButton(
//             onPressed: () async {
//               final result = await Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const SelectionScreen() )
//               );
//             },
//             child: Text('Pick an option'),
//         )
//       ),
//     );
//   }
// }