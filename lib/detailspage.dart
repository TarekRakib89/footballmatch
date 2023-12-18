// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
    required this.data,
  }) : super(key: key);
  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${data["match"]}",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            )),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                data["match"],
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                data["score"],
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Time:${data["time"]} ",
                style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.normal),
              ),
              Text(
                "Total Time: ${data["totaltime"]}",
                style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
