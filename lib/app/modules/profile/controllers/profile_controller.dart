import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  void getProfile() async {
    var dataProfile =
        await http.get(Uri.parse("https://reqres.in/api/users/2"));
    print(dataProfile);
  }
}
