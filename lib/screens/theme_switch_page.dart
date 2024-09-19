import 'package:chat_app/provider/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitcherPage extends StatelessWidget {
  const ThemeSwitcherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Switcher"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Light Theme"),
            trailing: Radio(
              value: ThemeMode.light,
              groupValue: themeNotifier.themeMode,
              onChanged: (value) {
                themeNotifier.setThemeMode(ThemeMode.light);
              },
            ),
          ),
          ListTile(
            title: const Text("Dark Theme"),
            trailing: Radio(
              value: ThemeMode.dark,
              groupValue: themeNotifier.themeMode,
              onChanged: (value) {
                themeNotifier.setThemeMode(ThemeMode.dark);
              },
            ),
          ),
          ListTile(
            title: const Text("System Default"),
            trailing: Radio(
              value: ThemeMode.system,
              groupValue: themeNotifier.themeMode,
              onChanged: (value) {
                themeNotifier.setThemeMode(ThemeMode.system);
              },
            ),
          ),
        ],
      ),
    );
  }
}



// body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: Column(
      //     children: [
      //       ListTile(
      //         title: Text('Light Theme'),
      //         leading: Radio(
      //           value: ThemeSettings.lightTheme,
      //           groupValue: themeNotifier.themeMode.toString(),
      //           onChanged: (String? value) {
      //             themeNotifier.setTheme(value!);
      //           },
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Dark Theme'),
      //         leading: Radio(
      //           value: ThemeSettings.darkTheme,
      //           groupValue: themeNotifier.themeMode.toString(),
      //           onChanged: (String? value) {
      //             themeNotifier.setTheme(value!);
      //           },
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('System Default'),
      //         leading: Radio(
      //           value: ThemeSettings.systemDefaultTheme,
      //           groupValue: themeNotifier.themeMode.toString(),
      //           onChanged: (String? value) {
      //             themeNotifier.setTheme(value!);
      //           },
      //         ),
      //       ),
      //     ],
      //   ),
      // ),