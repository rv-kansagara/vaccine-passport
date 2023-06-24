import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../data/providers/vaccine_passport_provider.dart';

import '../widgets/widgets.dart';
import '../screens/screens.dart';

class HomeScreen extends StatelessWidget {
  static const String route = '/home-screen';

  final _firebaseAuth = FirebaseAuth.instance;

  String checkStatus(int index, snapshot) {
    String d1Dosage = snapshot.data!.docs[index]['d1Dosage'];
    String d2Dosage = snapshot.data!.docs[index]['d2Dosage'];
    String status = '';
    if (d1Dosage.isNotEmpty && d2Dosage.isNotEmpty) {
      status = 'Fully Vaccinated';
    }

    if (d1Dosage.isEmpty || d2Dosage.isEmpty) {
      status = 'Partially Vaccinated';
    }

    if (d1Dosage.isEmpty && d2Dosage.isEmpty) {
      status = 'Not Vaccinated';
    }

    return status;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'VACCINE PASSPORT',
          style: TextStyle(letterSpacing: 1.5),
        ),
      ),
      body: Center(
        child: Consumer<VaccinePassportProvider>(
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
                        children: [
                          CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage('assets/icons/avatar.png'),
                            backgroundColor: Colors.transparent,
                          ),
                          const SizedBox(height: 40),
                          Text(
                            "${snapshot.data!.docs[index]['firstName']} ${snapshot.data!.docs[index]['lastName']}",
                            style: TextStyle(
                              fontSize: 22,
                              letterSpacing: 1.5,
                            ),
                          ),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              NeumorphicContainer(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ProfileDetailsScreen.route);
                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset('assets/icons/profile.png',
                                          height: 70),
                                      Text(
                                        'PROFILE',
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              NeumorphicContainer(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, VaccineDetailsScreen.route);
                                },
                                child: Container(
                                  height: 150,
                                  width: 130,
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Image.asset('assets/icons/recovered.png',
                                          height: 70),
                                      Text(
                                        'DETAILS',
                                        style: TextStyle(
                                          fontSize: 16,
                                          letterSpacing: 2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 40),
                          NeumorphicContainer(
                            child: QrImage(
                              data: checkStatus(index, snapshot),
                              size: 200,
                              foregroundColor: Colors.white,
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
