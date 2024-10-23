import 'dart:io';

import 'package:blood_finder/core/theme/theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

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
  final ImagePicker _picker = ImagePicker();
  XFile? _image;
  bool _isDonor = false;

  Future<void> _pickImage() async {
    final XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[50],
                  backgroundImage: _image != null
                      ? FileImage(
                          File(_image!.path),
                        )
                      : null,
                  child: _image == null
                      ? const Icon(
                          Icons.camera_alt,
                          size: 50,
                          color: Colors.grey,
                        )
                      : null,
                ),
              ),
              const Gap(30),
              const _FormFIeldRow(
                hintTextLeft: "First Name",
                hintTextRight: 'Last Name',
              ),
              const Gap(10),
              const CustomTextFormField(
                hintText: 'NID Number',
                keyboardType: TextInputType.number,
              ),
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
              const _FormFIeldRow(
                hintTextLeft: 'Gender',
                hintTextRight: 'Date of Birth',
              ),
              const Gap(10),
              const CustomTextFormField(hintText: 'Location'),
              const Gap(10),
              const CustomTextFormField(hintText: 'Blood Group'),
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
              const Gap(20),
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
