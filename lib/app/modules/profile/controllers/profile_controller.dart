import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  var isLoading = false.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }

  fetchData() async {
    try {
      isLoading(true);
      http.Response response =
          await http.get(Uri.tryParse('https://reqres.in/api/users/2')!);
      if (response.statusCode == 200) {
        ///data successfully
        var result = jsonDecode(response.body);
        print(result);

        // openseaModel = OpenseaModel.fromJson(result);
      } else {
        print('error fetching data');
      }
    } catch (e) {
      print('Error while getting data is $e');
    } finally {
      isLoading(false);
    }
  }
}

// class ApiHelper {
//   void getProfile() async {
//     var dataProfile =
//         await http.get(Uri.parse("https://reqres.in/api/users/2"));
//     print(dataProfile);
//   }
// }
