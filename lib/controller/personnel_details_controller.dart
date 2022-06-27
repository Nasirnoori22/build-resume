import 'dart:ffi';

import 'package:build_resume/models/personnel_details_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';

import '../services/database_service.dart';

class PersonnelDetailsController extends GetxController {
  final DatabaseService database = DatabaseService();

  var personnalDetails = <PersonnelDetailsController>[].obs;

  var newpersonnnelDetails = {}.obs;
}
