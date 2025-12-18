import 'package:flutter/material.dart';
import 'package:flutter_test_supabase/home_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseURL = 'https://xztxpxxfixbuguobdhct.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh6dHhweHhmaXhidWd1b2JkaGN0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjYwMDg2NDgsImV4cCI6MjA4MTU4NDY0OH0.PyKU-IG4Y-RqBTT5eHE_KXo1TzO7_GX3nFWlRu0QNlQ';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: supabaseURL, anonKey: supabaseKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Supabase Foto', home: MyHomePage());
  }
}
