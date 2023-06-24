import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vaccine_passport_client/data/providers/providers.dart';

class ProfileDetailsScreen extends StatelessWidget {
  static const String route = '/profile-details-screen';

  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PROFILE',
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
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading:
                                Icon(Icons.person_rounded, color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['firstName']} ${snapshot.data!.docs[index]['lastName']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading: Icon(Icons.alternate_email_rounded,
                                color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['email']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading:
                                Icon(Icons.phone_rounded, color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['phone']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading:
                                Icon(Icons.male_rounded, color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['gender']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading: Icon(Icons.description_rounded,
                                color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['healthCardNumber']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading:
                                Icon(Icons.location_pin, color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['address']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading: Icon(Icons.location_city_rounded,
                                color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['city']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading: Icon(Icons.location_city_rounded,
                                color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['province']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ),
                        Divider(indent: 40, endIndent: 30),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: ListTile(
                            leading: Icon(Icons.location_city_rounded,
                                color: Colors.grey),
                            trailing: Text(
                              "${snapshot.data!.docs[index]['country']}",
                              style: TextStyle(
                                fontSize: 17,
                                letterSpacing: 1,
                              ),
                            ),
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
    );
  }
}
