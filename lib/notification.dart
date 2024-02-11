import 'package:flutter/material.dart';

// Modèle de notification
class NotificationModel {
  final String title;
  final String description;
  final NotificationType type;

  NotificationModel(
      {required this.title, required this.description, required this.type});
}

// Enumération des types de notification
enum NotificationType { Info, Warning, Error }

class NotificationPage extends StatelessWidget {
  // Liste de notifications
  final List<NotificationModel> notifications = [
    NotificationModel(
      title: 'Besoin d\'aide',
      description: 'msg 1 .',
      type: NotificationType.Info,
    ),
    NotificationModel(
      title: 'Perdu',
      description: 'msg 2',
      type: NotificationType.Warning,
    ),
    NotificationModel(
      title: 'Urgent',
      description: 'msg 3',
      type: NotificationType.Error,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return ListTile(
          title: Text(notification.title),
          subtitle: Text(notification.description),
          leading: _buildIcon(notification.type),
        );
      },
    );
  }

  // Méthode pour construire l'icône en fonction du type de notification
  Icon _buildIcon(NotificationType type) {
    switch (type) {
      case NotificationType.Info:
        return Icon(Icons.info, color: Colors.blue);
      case NotificationType.Warning:
        return Icon(Icons.warning, color: Colors.orange);
      case NotificationType.Error:
        return Icon(Icons.error, color: Colors.red);
    }
  }
}
