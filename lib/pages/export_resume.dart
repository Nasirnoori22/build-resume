import 'dart:typed_data';

import 'package:build_resume/controller/personnel_details_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

import '../models/personnel_details_model.dart';

Future<Uint8List> makePdf(PersonnelDetails personnelDetails) async {
  final PersonnelDetailsController personnelDetailsController = Get.find();
  final pdf = Document();
  final imageLogo = MemoryImage(
      (await rootBundle.load('assets/technical_logo.png'))
          .buffer
          .asUint8List());
  pdf.addPage(
    Page(
      build: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(personnelDetails.name),
                    Text(personnelDetails.last_name),
                    Text(personnelDetails.address),
                    Text(personnelDetails.email),
                    Text(personnelDetails.phone),
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                SizedBox(
                  height: 150,
                  width: 150,
                  child: Image(imageLogo),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(right: 280),
                height: 20,
                child: Text(
                  'Personnel Information',
                  style: TextStyle(fontSize: 20),
                )),
            Table(
              children: [
                TableRow(
                  children: [
                    Expanded(
                      child: PaddedText(personnelDetails.email),
                      flex: 4,
                    ),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 240),
              child: Padding(
                child: Text(
                  "THANK YOU IN ADVANCE",
                  style: Theme.of(context).header2,
                ),
                padding: EdgeInsets.all(20),
              ),
            )
          ],
        );
      },
    ),
  );
  return pdf.save();
}

Widget PaddedText(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );
