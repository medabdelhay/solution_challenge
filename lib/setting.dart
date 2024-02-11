import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _darkMode = false; // Example setting: Dark mode toggle
  bool _notificationsEnabled = true; // Example setting: Notifications toggle

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: <Widget>[
        SwitchListTile(
          title: Text('Dark Mode'),
          subtitle: Text('Enable dark mode for the app'),
          value: _darkMode,
          onChanged: (value) {
            setState(() {
              _darkMode = value;
              // Apply dark mode changes
            });
          },
        ),
        Divider(),
        SwitchListTile(
          title: Text('Notifications'),
          subtitle: Text('Receive notifications from the app'),
          value: _notificationsEnabled,
          onChanged: (value) {
            setState(() {
              _notificationsEnabled = value;
              // Update notification preferences
            });
          },
        ),
        // Add more settings widgets here
      ],
    );
  }
}
