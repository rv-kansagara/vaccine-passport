import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DosageDetailsOne extends StatelessWidget {
  final AsyncSnapshot<QuerySnapshot?> snapshot;
  final int index;

  const DosageDetailsOne(this.snapshot, this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Agent'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1Agent']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Product Name'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1ProductName']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Diluent Product'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1DiluentProduct']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Lot'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1Lot']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Dosage'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1Dosage']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Route'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1Route']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Site'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1Site']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Country'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1Country']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Date'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1Date']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Vaccine Administered By'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1VaccineAdministeredBy']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
        Divider(indent: 20, endIndent: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: ListTile(
            title: Text('Authorized Organization'),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "${snapshot.data!.docs[index]['d1AuthorizedOrganization']}",
                style: TextStyle(
                  fontSize: 17,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
