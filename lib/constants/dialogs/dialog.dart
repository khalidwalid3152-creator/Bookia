import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';

showErrorDialog(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.all(20),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Appcolors.orangecolor,
      content: Text(message, style: textstyles.size18(color: Appcolors.bgtext)),
    ),
  );
}

showloadingdialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context){
      return Center(child: CircularProgressIndicator());
    },
  );
}
