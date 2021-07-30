import 'package:flutter/material.dart';

// Interface
import '../../../models/auth/auth_interface.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _passwordFocus = FocusNode();
  final _submitButtonFocus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  var _formData = ILogin(email: '', password: '');

  void _submitForm() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    _formKey.currentState!.save();
    // print(_formData);
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
                // labelText: 'EMAIL',
                // labelStyle: TextStyle(color: Colors.black),
                hintText: "Enter Email ID",
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
                  email: value ?? '',
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
                  email: _formData.email,
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
