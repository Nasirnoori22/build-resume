import 'package:build_resume/controller/personnel_details_controller.dart';
import 'package:build_resume/models/personnel_details_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../services/database_service.dart';
import '../themse/theme.dart';

class PersonnelInformationWidget extends StatelessWidget {
  PersonnelInformationWidget({Key? key}) : super(key: key);

  final PersonnelDetailsController personnelDetailsController =
      Get.put(PersonnelDetailsController());
  DatabaseService database = DatabaseService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff72cec1),
        title: Text(
          'Personnel Information',
          style: Themes.lightTheme.textTheme.headline4,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              _buildTextFormField(
                'Id',
                'id',
                personnelDetailsController,
              ),
              const SizedBox(height: 20),
              _buildTextFormField(
                ' Name',
                'name',
                personnelDetailsController,
              ),
              const SizedBox(height: 20),
              _buildTextFormField(
                'Last Name',
                'last_name',
                personnelDetailsController,
              ),
              const SizedBox(height: 20),
              _buildTextFormField(
                'Address',
                'address',
                personnelDetailsController,
              ),
              const SizedBox(height: 20),
              _buildTextFormField(
                'Email',
                'email',
                personnelDetailsController,
              ),
              const SizedBox(height: 20),
              _buildTextFormField(
                'Phone',
                'phone',
                personnelDetailsController,
              ),
              const SizedBox(height: 20),
              Center(
                  child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width - 320,
                height: MediaQuery.of(context).size.height * 0.1 - 40,
                color: Colors.cyan.withOpacity(0.7),
                splashColor: Colors.cyan.withOpacity(0.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                onPressed: () {
                  database.addProduct(
                    PersonnelDetails(
                      name: personnelDetailsController
                          .newpersonnnelDetails['name'],
                      last_name: personnelDetailsController
                          .newpersonnnelDetails['last_name'],
                      address: personnelDetailsController
                          .newpersonnnelDetails['address'],
                      email: personnelDetailsController
                          .newpersonnnelDetails['email'],
                      phone: personnelDetailsController
                          .newpersonnnelDetails['name'],
                      id: int.parse(personnelDetailsController
                          .newpersonnnelDetails['id']),
                    ),
                  );
                  Navigator.pop(context);
                },
                child: Text('Save',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
              ))
            ],
          ),
        ),
      ),
    );
  }

  TextFormField _buildTextFormField(
    String hintText,
    String name,
    PersonnelDetailsController productController,
  ) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: hintText,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(
              color: Colors.black54,
              width: 0.0,
            ),
          ),
          border: OutlineInputBorder()),
      onFieldSubmitted: (value) {},
      onChanged: (value) {
        productController.newpersonnnelDetails.update(
          name,
          (_) => value,
          ifAbsent: () => value,
        );
      },
    );
  }
}
