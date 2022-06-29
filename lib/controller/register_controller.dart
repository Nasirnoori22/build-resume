import 'package:build_resume/models/personnel_details_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../services/database_service.dart';

class RegisterController extends GetxController {
  final DatabaseService register_database = DatabaseService();

  var personnalDetails = <RegisterController>[].obs;

  var newpersonnnelDetails = {}.obs;
}
