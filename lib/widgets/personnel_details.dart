import 'package:animations/animations.dart';
import 'package:build_resume/widgets/appbar.dart';
import 'package:build_resume/widgets/personnel_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:iconly/iconly.dart';

import '../themse/theme.dart';

class PersonnelDetailsWidget extends StatelessWidget {
  const PersonnelDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OpenContainer(
          closedBuilder: ((context, action) => Container(
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
                          IconlyBold.profile,
                          size: 40,
                          color: Color(0xff72cec1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Personal Details',
                      style: Themes.lightTheme.textTheme.bodyText1,
                    )
                  ],
                ),
              )),
          openBuilder: (context, action) => PersonnelInformationWidget(),
        ),
        SizedBox(
          width: 20,
        ),
        Container(
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
                    IconlyBold.activity,
                    size: 40,
                    color: Color(0xff72cec1),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Educations',
                style: Themes.lightTheme.textTheme.bodyText1,
              )
            ],
          ),
        ),
      ],
    );
  }
}
