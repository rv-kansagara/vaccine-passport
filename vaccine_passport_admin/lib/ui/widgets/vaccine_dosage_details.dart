import 'package:flutter/material.dart';
import 'widgets.dart';

class VaccineDosageDetails extends StatelessWidget {
  final String title;

  const VaccineDosageDetails({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: SectionTitle(title: title),
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Agent',
                    prefixIcon: Icon(
                      Icons.description_rounded,
                    ),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Product Name',
                    prefixIcon: Icon(Icons.title_rounded),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Diluent Product',
                    prefixIcon: Icon(
                      Icons.description_rounded,
                    ),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Lot',
                    prefixIcon: Icon(Icons.description_rounded),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Dosage',
                    prefixIcon: Icon(
                      Icons.description_rounded,
                    ),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Route',
                    prefixIcon: Icon(
                      Icons.description_rounded,
                    ),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Site',
                    prefixIcon: Icon(Icons.title_rounded),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Country',
                    prefixIcon: Icon(
                      Icons.location_pin,
                    ),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Date',
                    prefixIcon: Icon(Icons.date_range),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Vaccine Administered By',
                    prefixIcon: Icon(
                      Icons.person_rounded,
                    ),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Authorized Organization',
                    prefixIcon: Icon(
                      Icons.description_rounded,
                    ),
                  ),
                  onSaved: (input) {},
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
