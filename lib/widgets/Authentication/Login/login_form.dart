import 'dart:async'; // super lib
import 'package:flutter/material.dart';
// Redirect
import '../../../app_screen.dart';
// Interface
import '../../../models/auth/auth_interface.dart';
// Api
import '../../../providers/authentication/auth.dart';
// Layout Loader Component
import '../../../widgets/Layout/Loader/loader.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _passwordFocus = FocusNode();
  final _submitButtonFocus = FocusNode();
  var _formData = ILogin(username: '', password: '');
  // handle when call api
  final Function loader = Loader().changeLoading;

  Future<void> _submitForm() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    _formKey.currentState!.save();
    loader(context, true);
    await Auth().signIn({
      'username': _formData.username,
      'password': _formData.password,
    }).then((value) {
      loader(context, false);
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => MyScreen(
                currentPage: 0,
              )));
    }).catchError((err) {
      print('Login failed');
    });
    loader(context, false);
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
                  'Please login to your account to continue.',
                  style: TextStyle(
                    fontFamily: 'MyFlutterApp',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              initialValue: '',
              decoration: InputDecoration(
                // labelText: 'USERNAME',
                // labelStyle: TextStyle(color: Colors.black),
                hintText: "Enter UserName",
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
                if (value!.isEmpty) return 'Please provide a title.';
                return null; // Correct input
              },
              onSaved: (value) {
                _formData = ILogin(
                  username: value ?? '',
                  password: _formData.password,
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
                if (value!.isEmpty) return 'Please provide a title.';
                return null; // Correct input
              },
              onFieldSubmitted: (_) {
                FocusScope.of(context).requestFocus(_submitButtonFocus);
              },
              onSaved: (value) {
                _formData = ILogin(
                  username: _formData.username,
                  password: value ?? '',
                );
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontFamily: 'MyFlutterApp',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
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
                child: Text("LOGIN",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
