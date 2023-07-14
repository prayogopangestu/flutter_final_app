import 'package:flutter/material.dart';

class DataDiri extends StatefulWidget {
  const DataDiri({super.key});

  @override
  State<DataDiri> createState() => _DataDiriState();
}

class _DataDiriState extends State<DataDiri> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Diri"),
      ),
      body: Column(
        children: [
          Image.network(
              'https://img.freepik.com/premium-vector/young-smiling-man-avatar-man-with-brown-beard-mustache-hair-wearing-yellow-sweater-sweatshirt-3d-vector-people-character-illustration-cartoon-minimal-style_365941-860.jpg?w=2000'),
          const SizedBox(
            height: 18,
          ),
          const Text(
            'Prayogo Pangestu ',
            style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20),
          ),
          const SizedBox(
            height: 18,
          ),
          const Text('My Skil'),
          const SizedBox(
            height: 10,
          ),
          const Text('Android Develoment'),
          const SizedBox(
            height: 5,
          ),
          const Text('Web Develoment'),
        ],
      ),
    );
  }
}
