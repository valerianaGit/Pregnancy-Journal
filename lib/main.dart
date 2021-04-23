import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_page.dart';
// import 'package:provider/provider.dart';
import 'package:pregnancy_journal/models/journal_entry_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<JournalEntryData>(
      create: (context) => JournalEntryData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

/**
 * 
 * Packages used 
 * Internationalization https://pub.dev/packages/intl/install
 * to be able to format date and time 
 * 
 * Provider https://pub.dev/packages/provider
 * to manage state 
 * 
 */
