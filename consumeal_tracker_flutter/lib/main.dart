import 'package:consumeal_tracker_client/consumeal_tracker_client.dart';
import 'package:consumeal_tracker_flutter/pages/homepage.dart';
import 'package:consumeal_tracker_flutter/pages/add_items_in_master.dart';
import 'package:consumeal_tracker_flutter/pages/add_meal.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/homepage': (context) => const HomePage(),
        '/addMeal': (context) => const AddMeal(),
        '/addItemsInMaster': (context) => const AddItemsInMaster(),
      },
      title: 'C O N S U M E A L     T R A C K E R',
      home: const HomePage(),
    );
  }
}
