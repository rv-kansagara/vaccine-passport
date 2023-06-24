import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

import 'package:provider/provider.dart';

import '../../data/providers/providers.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const String route = '/home-screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final Map<String, String> _vaccinePassport = {};

  File? _image;

  Future _pickImage() async {
    final _picker = ImagePicker();
    final _pickedImage = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      _image = File(_pickedImage!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<VaccinePassportProvider>(
      builder: (context, data, _) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'VACCINE PASSPORT - REGISTRATION',
                style: TextStyle(letterSpacing: 1.5),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    icon: Icon(Icons.logout_rounded),
                    splashRadius: 20,
                    iconSize: 30,
                    tooltip: 'SIGN OUT',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(80),
                child: Row(
                  children: [
                    Expanded(
                      child: Form(
                        key: _key,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                CircleAvatar(
                                  radius: 60,
                                  backgroundColor: Colors.transparent,
                                  child: _image == null
                                      ? Image.asset('assets/icons/avatar.png')
                                      : null,
                                  backgroundImage: _image != null
                                      ? NetworkImage(_image!.path)
                                      : null,
                                ),
                                Positioned(
                                  top: 80,
                                  left: 80,
                                  child: GestureDetector(
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: GestureDetector(
                                        onTap: () => _pickImage(),
                                        child: Icon(
                                          Icons.camera_alt_rounded,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'First Name',
                                        prefixIcon: Icon(Icons.person_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['firstName'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Last Name',
                                        prefixIcon: Icon(Icons.person_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['lastName'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Gender',
                                        prefixIcon: Icon(Icons.male_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['gender'] = input!;
                                      },
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
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        labelText: 'Email',
                                        prefixIcon: Icon(
                                          Icons.alternate_email_rounded,
                                        ),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['email'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Phone',
                                        prefixIcon: Icon(Icons.phone_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['phone'] = input!;
                                      },
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
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        labelText: 'Address',
                                        prefixIcon: Icon(
                                          Icons.location_pin,
                                        ),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['address'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'City',
                                        prefixIcon:
                                            Icon(Icons.location_city_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['city'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Postal Code',
                                        prefixIcon:
                                            Icon(Icons.location_city_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['postalCode'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Province',
                                        prefixIcon:
                                            Icon(Icons.location_city_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['province'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Country',
                                        prefixIcon:
                                            Icon(Icons.location_city_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['country'] = input!;
                                      },
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
                                      keyboardType: TextInputType.datetime,
                                      decoration: InputDecoration(
                                        labelText: 'Birth-date',
                                        prefixIcon: Icon(
                                          Icons.date_range_rounded,
                                        ),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['birthDate'] = input!;
                                      },
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelText: 'Health Card Number',
                                        prefixIcon:
                                            Icon(Icons.location_city_rounded),
                                      ),
                                      validator: (input) {
                                        if (input!.isEmpty) {
                                          return 'Required';
                                        }
                                      },
                                      onSaved: (input) {
                                        _vaccinePassport['healthCardNumber'] =
                                            input!;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 30),
                                        child: SectionTitle(title: 'Dosage 1'),
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d1Agent'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Product Name',
                                                  prefixIcon:
                                                      Icon(Icons.title_rounded),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                      'd1ProductName'] = input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                          'd1DiluentProduct'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Lot',
                                                  prefixIcon: Icon(Icons
                                                      .description_rounded),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d1Lot'] =
                                                      input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d1Dosage'] =
                                                      input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d1Route'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Site',
                                                  prefixIcon:
                                                      Icon(Icons.title_rounded),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d1Site'] =
                                                      input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                      'd1Country'] = input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Date',
                                                  prefixIcon:
                                                      Icon(Icons.date_range),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d1Date'] =
                                                      input!;
                                                },
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
                                                  labelText:
                                                      'Vaccine Administered By',
                                                  prefixIcon: Icon(
                                                    Icons.person_rounded,
                                                  ),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                          'd1VaccineAdministeredBy'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Authorized Organization',
                                                  prefixIcon: Icon(
                                                    Icons.description_rounded,
                                                  ),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                          'd1AuthorizedOrganization'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 50),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 30),
                                        child: SectionTitle(title: 'Dosage 2'),
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d2Agent'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Product Name',
                                                  prefixIcon:
                                                      Icon(Icons.title_rounded),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                      'd2ProductName'] = input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                          'd2DiluentProduct'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Lot',
                                                  prefixIcon: Icon(Icons
                                                      .description_rounded),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d2Lot'] =
                                                      input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d2Dosage'] =
                                                      input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d2Route'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Site',
                                                  prefixIcon:
                                                      Icon(Icons.title_rounded),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d2Site'] =
                                                      input!;
                                                },
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
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                      'd2Country'] = input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText: 'Date',
                                                  prefixIcon:
                                                      Icon(Icons.date_range),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport['d2Date'] =
                                                      input!;
                                                },
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
                                                  labelText:
                                                      'Vaccine Administered By',
                                                  prefixIcon: Icon(
                                                    Icons.person_rounded,
                                                  ),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                          'd2VaccineAdministeredBy'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: TextFormField(
                                                decoration: InputDecoration(
                                                  labelText:
                                                      'Authorized Organization',
                                                  prefixIcon: Icon(
                                                    Icons.description_rounded,
                                                  ),
                                                ),
                                                validator: (input) {
                                                  if (input!.isEmpty) {
                                                    return 'Required';
                                                  }
                                                },
                                                onSaved: (input) {
                                                  _vaccinePassport[
                                                          'd2AuthorizedOrganization'] =
                                                      input!;
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            GradientButton(
                              label: 'REGISTER',
                              icon: Icons.done_outline_rounded,
                              isLoading: data.isLoading,
                              onTap: () {
                                _key.currentState!.save();
                                if (_key.currentState!.validate()) {
                                  data.signUp(
                                    email: 'test@test.com',
                                    // email: _vaccinePassport['email']!,
                                    data: _vaccinePassport,
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
