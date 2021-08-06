import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Interface
import '../../../models/auth/auth_interface.dart';
// Api
import '../../../providers/authentication/auth.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _passwordFocus = FocusNode();
  final _submitButtonFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  bool contacted = false;
  var _formData = IRegister(username: '', password: '', gender: Gender.unknow);

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
      content: Text(value),
      action: SnackBarAction(
        label: 'Hide',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    ));
  }

  Future<void> _submitForm() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    if (!contacted) {
      showInSnackBar('Please Agree with the condition!!!');
      return;
    }
    _formKey.currentState!.save();
    await Auth().signUp({
      'username': _formData.username,
      'password': _formData.password,
      'fullname': 'I Am admin',
      'email': 'client2@test.com',
      'phoneNumber': '0123456727',
    });
  }

  @override
  void dispose() {
    super.dispose();
    _passwordFocus.dispose();
    _submitButtonFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
                height: 40,
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Create Account.',
                  style: TextStyle(
                    fontFamily: 'MyFlutterApp',
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: '',
              decoration: InputDecoration(
                // labelText: 'username',
                // labelStyle: TextStyle(color: Colors.black),
                hintText: "Enter username ID",
                fillColor: Colors.black,
                focusColor: Colors.black,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.mail_outline,
                    color: Colors.black,
                  ), // icon is 48px widget.
                ),
              ),
              textInputAction: TextInputAction.next,
              maxLines: 1,
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_passwordFocus);
              },
              validator: (value) {
                if (value!.isEmpty) return 'Please provide a username.';
                return null; // Correct input
              },
              onSaved: (value) {
                _formData = IRegister(
                  username: value ?? '',
                  password: _formData.password,
                  // passwordConfirm: _formData.passwordConfirm,
                  gender: _formData.gender,
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: '',
              obscureText: true,
              decoration: InputDecoration(
                // labelText: 'PASSWORD',
                // labelStyle: TextStyle(color: Colors.black),
                hintText: "Enter Password",
                fillColor: Colors.black,
                focusColor: Colors.black,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.black),
                ),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Icon(
                    Icons.lock_outlined,
                    color: Colors.black,
                  ), // icon is 48px widget.
                ),
              ),
              focusNode: _passwordFocus,
              maxLines: 1,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              validator: (value) {
                if (value!.isEmpty) return 'Please provide a password.';
                return null; // Correct input
              },
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_submitButtonFocus);
              },
              onSaved: (value) {
                _formData = IRegister(
                  username: _formData.username,
                  password: value ?? '',
                  // passwordConfirm: _formData.passwordConfirm,
                  gender: _formData.gender,
                );
              },
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.red),
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(top: 35, bottom: 15),
                    child: Text('Gender',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            setState(() {
                              this._formData.gender = Gender.male;
                            });
                          },
                          child: Text(
                            'Male',
                            style: TextStyle(
                                color: _formData.gender == Gender.male
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                            backgroundColor: _formData.gender == Gender.male
                                ? MaterialStateProperty.all<Color>(Colors.black)
                                : MaterialStateProperty.all<Color>(
                                    Colors.white),
                            fixedSize: MaterialStateProperty.all<Size>(Size(
                              (MediaQuery.of(context).size.width / 2) - 25,
                              45,
                            )),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          setState(() {
                            this._formData.gender = Gender.female;
                          });
                        },
                        child: Text(
                          'Female',
                          style: TextStyle(
                              color: _formData.gender == Gender.female
                                  ? Colors.white
                                  : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ButtonStyle(
                          backgroundColor: _formData.gender == Gender.female
                              ? MaterialStateProperty.all<Color>(Colors.black)
                              : MaterialStateProperty.all<Color>(Colors.white),
                          fixedSize: MaterialStateProperty.all<Size>(Size(
                            (MediaQuery.of(context).size.width / 2) - 25,
                            45,
                          )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 75,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                children: [
                  Transform.scale(
                    scale: 1.3,
                    child: Checkbox(
                      value: this.contacted,
                      activeColor: Colors.black,
                      onChanged: (value) {
                        setState(() {
                          this.contacted = !this.contacted;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: const Text(
                        'I\'d like to be contacted with latest updates & offers from JooLux.'),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  _submitForm();
                },
                focusNode: _submitButtonFocus,
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                  elevation: MaterialStateProperty.all<double>(12.0),
                ),
                child: Text("SIGN UP",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
