import 'package:flutter/material.dart';
import 'package:stealth_slotyi_testapp/core/injectable/injectable.dart';
import 'app.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const App());
}