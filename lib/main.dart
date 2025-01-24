import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stealth_slotyi_testapp/core/injectable/injectable.dart';
import 'package:stealth_slotyi_testapp/core/links/app_links.dart';
import 'app.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName:AppLinks.envFileLink);
  configureDependencies();
  runApp(const App());
}