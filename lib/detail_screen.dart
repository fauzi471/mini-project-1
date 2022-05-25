import 'package:flutter/material.dart';
import 'package:flutter_model_and_networking/data_model.dart';
import 'package:flutter_model_and_networking/style.dart';

class DetailScreen extends StatelessWidget {
  final DataModel item;
  const DetailScreen({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  item.imageLocationUrl,
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.5),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                item.name,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Address',
                    style: boldText,
                  ),
                  Text(item.address),
                  const Divider(),
                  const Text(
                    'Phone Number',
                    style: boldText,
                  ),
                  Text(item.phoneNumber),
                  const Divider(),
                  const Text(
                    'Latitude',
                    style: boldText,
                  ),
                  Text(item.lat.toString()),
                  const Divider(),
                  const Text(
                    'Longitude',
                    style: boldText,
                  ),
                  Text(item.long.toString()),
                  const Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
