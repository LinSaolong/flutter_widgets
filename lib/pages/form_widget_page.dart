import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_widgets/pages/success_page.dart';
import 'package:flutter_widgets/widgets/custom_formfield.dart';
import 'package:checkbox_formfield/checkbox_formfield.dart';

import '../widgets/checkbox_form_field.dart';

class FormPage extends StatefulWidget {
  FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  bool checked = false;
  String gender = "male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Page"),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomFormField(
                hintText: 'Name',
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r"[a-zA-Z]+|\s"),
                  )
                ],
                validator: (val) {
                  if (val != null && val == "") return 'Enter valid name';
                  return null;
                },
              ),
              CustomFormField(
                hintText: 'Email',
                validator: (val) {
                  if (val != null && !val.isValidEmail) {
                    return 'Enter valid email';
                  }
                  return null;
                },
              ),
              CustomFormField(
                hintText: 'Phone',
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r"[0-9]"),
                  )
                ],
                validator: (val) {
                  if (val != null && !val.isValidPhone) {
                    return 'Enter valid phone';
                  }
                  return null;
                },
              ),
              CustomFormField(
                obscureText: true,
                hintText: 'Password',
                validator: (val) {
                  if (val != null) {
                    if (!val.isValidPassword) return 'Enter valid password';
                  }
                  return null;
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 140,
                    child: RadioListTile(
                      title: const Text("Male"),
                      value: "male",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: RadioListTile(
                      title: const Text("Female"),
                      value: "female",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ),
                ],
              ),
              CheckboxFormField(
                title: const Text("Agree"),
                validator: (val) {
                  if (val != null) {
                    if (!val) return 'Please agree';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SuccessPage(),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

extension NullExceptionString on String? {
  bool get isNotNull {
    return this != null;
  }
}

extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidName2 {
    final nameRegExp = RegExp(r"[a-zA-Z]+|\s");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?85620[0-9]{8}$");
    return phoneRegExp.hasMatch(this);
  }
}
