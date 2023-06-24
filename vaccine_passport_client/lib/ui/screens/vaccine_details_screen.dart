import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaccine_passport_client/data/providers/providers.dart';
import 'package:vaccine_passport_client/ui/widgets/widgets.dart';

class VaccineDetailsScreen extends StatelessWidget {
  static const String route = '/vaccine-details-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VACCINE DETAILS',
          style: TextStyle(letterSpacing: 1.5),
        ),
      ),
      body: Consumer<VaccinePassportProvider>(
        builder: (context, data, _) {
          return StreamBuilder(
            stream: data.userInfo,
            builder: (context, AsyncSnapshot<QuerySnapshot?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Dosage 1',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        DosageDetailsOne(snapshot, index),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            'Dosage 2',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        DosageDetailsTwo(snapshot, index),
                      ],
                    );
                  },
                );
              }
            },
          );
        },
      ),
    );
  }
}
