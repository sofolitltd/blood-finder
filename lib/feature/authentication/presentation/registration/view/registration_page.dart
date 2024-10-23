import 'package:blood_finder/core/theme/theme.dart';
import 'package:blood_finder/db/database.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/services/router/routes.dart';
import '../../../../../core/widgets/custom_text_field.dart';

part './widgets/form_field_row.dart';
part './widgets/link_text.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool _isDonor = false;
  String selectedDistrict = '';
  List<String> selectedThanas = [];
  String selectedThana = '';

  String? _selectedBloodGroup;
  String? _selectedGender;
  DateTime? _selectedDateOfBirth;

  // Function to open the Date Picker
  void _pickDateOfBirth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2010, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != _selectedDateOfBirth) {
      setState(() {
        _selectedDateOfBirth = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Registration')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Basic Info'),
              const Gap(10),

              //name
              const _FormFIeldRow(
                hintTextLeft: "First Name",
                hintTextRight: 'Last Name',
              ),

              const Gap(16),
              //gender, birth
              Row(
                children: [
                  // Gender Dropdown
                  Expanded(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: 'Gender',
                          border: OutlineInputBorder(),
                        ),
                        value: _selectedGender,
                        items: ['Male', 'Female']
                            .map((String gender) => DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(gender),
                                ))
                            .toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedGender = newValue;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0), // Space between the two fields
                  // Date of Birth Picker
                  Expanded(
                    child: InkWell(
                      onTap: () => _pickDateOfBirth(context),
                      child: InputDecorator(
                        decoration: const InputDecoration(
                          labelText: 'Date of Birth',
                          border: OutlineInputBorder(),
                        ),
                        child: Text(
                          _selectedDateOfBirth == null
                              ? 'Select Birth Date'
                              : '${_selectedDateOfBirth!.day}/${_selectedDateOfBirth!.month}/${_selectedDateOfBirth!.year}',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(16),
              // blood
              ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonFormField<String>(
                  value: _selectedBloodGroup,
                  decoration: const InputDecoration(
                    labelText: 'Blood Group',
                    border: OutlineInputBorder(),
                  ),
                  hint: const Text('Select Blood Group'),
                  items: DataBase.bloodGroups.map((String bloodGroup) {
                    return DropdownMenuItem<String>(
                      value: bloodGroup,
                      child: Text(bloodGroup),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedBloodGroup = newValue;
                    });
                  },
                ),
              ),

              // address
              const Gap(20),
              const Text('Address'),
              const Gap(10),
              Row(
                children: [
                  // District Autocomplete
                  Expanded(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: Autocomplete<String>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          return DataBase.districts
                              .where((district) => district.name
                                  .toLowerCase()
                                  .contains(
                                      textEditingValue.text.toLowerCase()))
                              .map((district) => district.name);
                        },
                        onSelected: (String selectedDistrict) {
                          setState(() {
                            this.selectedDistrict = selectedDistrict;
                            selectedThanas = DataBase.districts
                                .firstWhere((district) =>
                                    district.name == selectedDistrict)
                                .thanas;
                            selectedThana =
                                ''; // Reset thana when district is changed
                          });
                        },
                        fieldViewBuilder: (BuildContext context,
                            TextEditingController textEditingController,
                            FocusNode focusNode,
                            VoidCallback onFieldSubmitted) {
                          return TextField(
                            controller: textEditingController,
                            focusNode: focusNode,
                            decoration: const InputDecoration(
                              labelText: 'Select District',
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),

                  // Thana Autocomplete
                  Expanded(
                    child: Autocomplete<String>(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text == '' ||
                            selectedThanas.isEmpty) {
                          return const Iterable<String>.empty();
                        }
                        return selectedThanas.where((thana) => thana
                            .toLowerCase()
                            .contains(textEditingValue.text.toLowerCase()));
                      },
                      onSelected: (String selectedThana) {
                        setState(() {
                          this.selectedThana = selectedThana;
                        });
                      },
                      fieldViewBuilder: (BuildContext context,
                          TextEditingController textEditingController,
                          FocusNode focusNode,
                          VoidCallback onFieldSubmitted) {
                        return TextField(
                          controller: textEditingController,
                          focusNode: focusNode,
                          decoration: InputDecoration(
                            labelText: selectedDistrict.isEmpty
                                ? 'Select District first'
                                : 'Select Thana',
                          ),
                          enabled: selectedDistrict
                              .isNotEmpty, // Disable until district is selected
                        );
                      },
                    ),
                  ),
                ],
              ),
              const Gap(16),
              const CustomTextFormField(hintText: 'Location'),

              //
              const Gap(20),
              const Text('Contact'),
              const Gap(10),
              const CustomTextFormField(
                hintText: 'Mobile Number',
                keyboardType: TextInputType.number,
              ),
              const Gap(10),
              const CustomTextFormField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const Gap(10),
              const CustomTextFormField(
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
              ),

              const Gap(10),
              Row(
                children: [
                  Checkbox(
                    value: _isDonor,
                    onChanged: (value) {
                      setState(() {
                        _isDonor = value!;
                      });
                    },
                  ),
                  const Text('Sign up as donor'),
                ],
              ),
              const Gap(10),
              FilledButton(
                onPressed: () {
                  context.pushReplacementNamed(Routes.home);
                },
                child: const Text('Sign Up'),
              ),
              const Gap(20),
              const _LinkText(),
            ],
          ),
        ),
      ),
    );
  }
}
