import 'package:get/get.dart';

class RegisterProvider extends GetConnect {
  Future<Response> auth(var data) {
    var myHeader = {
      'Accept': 'application/json',
    };
    return post('http://192.168.100.4:8000/api/register', data, headers: myHeader);
  }
}
