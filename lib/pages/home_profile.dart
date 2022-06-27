import 'package:build_resume/pages/view_resume.dart';
import 'package:build_resume/widgets/appbar.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconly/iconly.dart';

import '../controller/personnel_details_controller.dart';
import '../themse/theme.dart';
import '../widgets/drawer.dart';
import '../widgets/personnel_details.dart';

class HomeProfile extends StatefulWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  State<HomeProfile> createState() => _HomeProfileState();
}

final PersonnelDetailsController personnelDetailsController = Get.find();

class _HomeProfileState extends State<HomeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      backgroundColor: Colors.grey.shade100,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => PdfPreviewPage(),
            ),
          );
          // rootBundle.
        },
        child: Icon(Icons.picture_as_pdf),
      ),
      appBar: AppBar(
          toolbarHeight: MediaQuery.of(context).size.height * 0.1 - 20,
          elevation: 0,
          backgroundColor: Themes.lightTheme.appBarTheme.backgroundColor,
          title: AppbarWidget()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              PersonnelDetailsWidget(),
              SizedBox(
                height: 20,
              ),
              PersonnelDetailsWidget(),
              SizedBox(
                height: 20,
              ),
              PersonnelDetailsWidget(),
              SizedBox(
                height: 20,
              ),
              PersonnelDetailsWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(right: 190),
                height: 120,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          IconlyLight.plus,
                          size: 40,
                          color: Color(0xff72cec1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Add New Section',
                      style: Themes.lightTheme.textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
