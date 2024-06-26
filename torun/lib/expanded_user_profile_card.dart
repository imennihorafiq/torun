// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpandedUserProfileCard extends StatefulWidget {
  final String name;
  final String surname;
  final String address;
  final double rating;
  final int voteCount;
  final String from;
  final String to;
  final int workHours;
  final List<String> missions;

  const ExpandedUserProfileCard(
      {super.key,
      required this.name,
      required this.surname,
      required this.address,
      required this.rating,
      required this.voteCount,
      required this.from,
      required this.to,
      required this.workHours,
      required this.missions});

  @override
  State<ExpandedUserProfileCard> createState() =>
      _ExpandedUserProfileCardState();
}

class _ExpandedUserProfileCardState extends State<ExpandedUserProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        controlAffinity: ListTileControlAffinity.platform,
        backgroundColor: Colors.grey.shade400,
        title: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            alignment: Alignment.center,
            height: 200,
            width: 425,
            decoration: BoxDecoration(
                color: Colors.grey.shade400, borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 400,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Color.fromARGB(255, 163, 162, 162), width: 1),
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.grey.shade300,
                elevation: 4.0,
                margin: const EdgeInsets.all(30.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${widget.name} ${widget.surname}',
                        style: const TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_on_outlined),
                          const SizedBox(width: 4.0),
                          Text(widget.address, style: TextStyle(fontSize: 20),),
                        ],
                      ),
                      const SizedBox(height: 8.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (index) {
                          return Icon(
                            index < widget.rating
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                          );
                        }),
                      ),
                      const SizedBox(height: 4.0),
                      // Text(
                      //   '$voteCount',
                      //   style: TextStyle(
                      //     fontSize: 18.0,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 75),
            child: Container(
              alignment: Alignment.center,
              height: 250,
              width: 425,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(189, 189, 189, 1), borderRadius: BorderRadius.circular(20)),
              child: Container(
                width: 400,
                child: Card(
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Color.fromRGBO(189, 189, 189, 1), width: 1),
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.grey.shade300,
                  elevation: 4.0,
                  margin: const EdgeInsets.all(0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Uygun Saat Aralığı:    ${widget.from} - ${widget.to}',
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Çalışma Süresi:          ${widget.workHours} saat',
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Görev Kategori:          ${widget.missions}',
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        Container(
                          alignment: Alignment.center,
                          child: const ElevatedButton(
                              onPressed: null,
                              child: Text(
                                "Talep gönder",
                                style: TextStyle(fontSize: 28),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
