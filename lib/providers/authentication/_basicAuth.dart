// super lib
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
// utils
import '../../helpers/utils/httpException.dart';

// ignore: non_constant_identifier_names
String base_url = dotenv.env['BASE_URL']!;

Future? originalSignIn(data) async {
  try {
    var endPoint = '$base_url/auth/client/signin';
    var result = await http
        .post(
      Uri.parse(endPoint),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(data),
    )
        .then((res) {
      if (res.statusCode == 200) {
        // handle cookies or token;
        return json.decode(res.body);
      }
    }).catchError((err) {
      if (err.statusCode >= 400) {
        throw {
          'message': 'Wrong UserName or Password',
          'status': 400,
        };
      }
    });

    return result;
  } on Exception catch (err) {
    throw HttpException('Failed to login');
  } catch (error) {
    print(error);
    throw Error();
  }
}

Future? originalSignUp(data) async {
  try {
    var endPoint = '$base_url/auth/client/signup';
    var res = await http
        .post(
      Uri.parse(endPoint),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: json.encode(data),
    )
        .then((res) {
      if (res.statusCode == 201) {
        return 201;
      }
    }).catchError((err) {
      if (err.status == 400) {
        throw {
          'message': 'Wrong UserName or Password',
          'status': 400,
        };
      }
    });

    if (res == 201) return await originalSignIn(data);
  } on Exception catch (err) {
    throw HttpException('Failed to login');
  } catch (error) {
    print(error);
    throw Error();
  }
}
