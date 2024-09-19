import 'package:chat_app/screens/home_screen.dart';
import 'package:chat_app/provider/theme_notifier.dart';
import 'package:chat_app/widgets/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: MyApp(),
      )
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeSettings.getTheme(ThemeMode.light), // Apply light theme from ThemeSettings
      darkTheme: ThemeSettings.getTheme(ThemeMode.dark),  // Apply dark theme from ThemeSettings
      themeMode: themeNotifier.themeMode,  // Use the current theme mode
      home: const HomeScreen(),
    );
  }
}

 








// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();

//   static _MyAppState of(BuildContext context) =>
//     context.findRootAncestorStateOfType<_MyAppState>()!;
// }

// class _MyAppState extends State<MyApp> {
//   ThemeMode _themeMode = ThemeMode.system;

//   void setThemeMode(ThemeMode mode){
//     setState(() {
//       _themeMode = mode;
//     });
//   }

//   // Public getter to access _themeMode
//   ThemeMode get themeMode => _themeMode;


//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       themeMode: _themeMode,
//        theme: ThemeData.light(),
//       darkTheme: ThemeData.dark(),
//       home:  HomeScreen(),
//     );
//   }
// }

//  theme: ThemeData(
//         brightness: Brightness.light,
//         primaryColor: Colors.purple,
//         scaffoldBackgroundColor: Colors.white,
//         textTheme: const TextTheme(
//           displayLarge: TextStyle(color: Colors.white),
//           bodyLarge: TextStyle(color: Colors.white),
//         ),
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Color(0xff1B202D),
//           iconTheme: IconThemeData(color: Colors.white),
//         ),
//        ),
//        darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         primaryColor: const Color(0xff1B202D),
//         scaffoldBackgroundColor: const Color(0xff1B202D),
//         textTheme: const TextTheme(
//           displayLarge: TextStyle(color: Colors.white),
//           bodyLarge: TextStyle(color: Colors.white),
//         ),
//         appBarTheme: const AppBarTheme(
//           backgroundColor: Color(0xff1B202D),
//           iconTheme: IconThemeData(color: Colors.white),
//         ),
//       ),