import 'package:consumeal_tracker_client/consumeal_tracker_client.dart';
import 'package:consumeal_tracker_flutter/main.dart';
import 'package:flutter/material.dart';

class ViewItemsMaster extends StatefulWidget {
  const ViewItemsMaster({super.key});

  @override
  State<ViewItemsMaster> createState() => _ViewItemsMasterState();
}

class _ViewItemsMasterState extends State<ViewItemsMaster> {
  late Future<List<MasterItems>> masterItemsList;

  Future<List<MasterItems>> getMasterItems() async =>
      await client.meals.readAllMasterItems();
  @override
  void initState() {
    super.initState();
    masterItemsList = getMasterItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<MasterItems>>(
        future: masterItemsList,
        builder: (context, snapshot) {
          if (snapshot.data!.length > 1) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(snapshot.data![index].unit),
                  trailing: Text(snapshot.data![index].calories.toString()),
                  title: Text(snapshot.data![index].name),
                  onTap: () {
                    AlertDialog();
                  },
                );
              },
            );
          }

          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
