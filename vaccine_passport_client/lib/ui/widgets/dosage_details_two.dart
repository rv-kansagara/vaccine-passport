import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DosageDetailsTwo extends StatelessWidget {
  final AsyncSnapshot<QuerySnapshot?> snapshot;
  final int index;

  const DosageDetailsTwo(this.snapshot, this.index);

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
                "${snapshot.data!.docs[index]['d2Agent']}",
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
                "${snapshot.data!.docs[index]['d2ProductName']}",
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
                "${snapshot.data!.docs[index]['d2DiluentProduct']}",
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
                "${snapshot.data!.docs[index]['d2Lot']}",
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
                "${snapshot.data!.docs[index]['d2Dosage']}",
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
                "${snapshot.data!.docs[index]['d2Route']}",
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
                "${snapshot.data!.docs[index]['d2Site']}",
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
                "${snapshot.data!.docs[index]['d2Country']}",
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
                "${snapshot.data!.docs[index]['d2Date']}",
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
                "${snapshot.data!.docs[index]['d2VaccineAdministeredBy']}",
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
                "${snapshot.data!.docs[index]['d2AuthorizedOrganization']}",
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
