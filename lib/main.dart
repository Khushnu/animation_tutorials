
import 'package:animation_tutorials/counter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterWidget(),
    );
  }
}


// /*
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//   bool _isCheckingForUpdate = true;
//   ShorebirdCodePush _shorebirdCodePush = ShorebirdCodePush();

//   void checkForUpdate() async {
//     final isUpdateAvailable =
//         await _shorebirdCodePush.isNewPatchAvailableForDownload();
//     if (!mounted) return;
//     setState(() {
//       _isCheckingForUpdate = false;
//     });
//     if (isUpdateAvailable) {
//       _showUpdateAvailableBanner();
//     } else {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('No update available'),
//         ),
//       );
//     }
//   }

//   void _showDownloadingBanner() {
//     ScaffoldMessenger.of(context).showMaterialBanner(
//       const MaterialBanner(
//         content: Text('Downloading...'),
//         actions: [
//           SizedBox(
//             height: 14,
//             width: 14,
//             child: CircularProgressIndicator(
//               strokeWidth: 2,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showUpdateAvailableBanner() {
//     ScaffoldMessenger.of(context).showMaterialBanner(
//       MaterialBanner(
//         content: const Text('Update available'),
//         actions: [
//           TextButton(
//             onPressed: () async {
//               ScaffoldMessenger.of(context).hideCurrentMaterialBanner();

//               if (!mounted) return;
//               ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
//             },
//             child: const Text('Download'),
//           ),
//         ],
//       ),
//     );
//   }

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     checkForUpdate();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many many times:',
//             ),
//             Text('New Feature '),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
// */