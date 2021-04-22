import 'package:flutter/material.dart';

// create cards that will show up as a journal entry
// they have rounded corners
// has date and a color associated to a month
//
//
class JournalCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.only(
      //     bottomRight: Radius.circular(10),
      //   ),
      // ),
      color: Colors
          .deepOrange, //TODO: POSSIBLY change to acolor shades of purple from 100 to 900 according to the month they are on

      child: Container(
        height: 50.0,
        alignment: Alignment.center,
        //TODO: insert date from data model here
        child: Text(
          'INSERT DATE FROM MODEL HERE ',
          style: TextStyle(),
        ),
      ),
    );
  }
}
