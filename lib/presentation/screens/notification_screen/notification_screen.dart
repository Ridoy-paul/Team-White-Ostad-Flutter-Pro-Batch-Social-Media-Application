import 'package:flutter/material.dart';

import 'models/notifications.dart';
import 'widgets/list_tile_divider.dart';
import 'widgets/list_tile_view.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: ListView.separated(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationListTile(
            notifications: notifications,
            index: index,
          );
        },
        separatorBuilder: (__, _) {
          return const ListTileDivider();
        },
      ),
    );
  }

  AppBar get appBar {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: Text(
        "Notification",
        style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 20),
      ),
      elevation: 0,
      toolbarHeight: 44,
      centerTitle: false,
      automaticallyImplyLeading: false,
      titleSpacing: -5,
    );
  }

  List<Notifications> notifications = [
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 0,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 0,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 1,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 0,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 0,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 1,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'null',
      postBy: 'null',
      postTitle: 'null',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 1,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 0,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 0,
    ),
    Notifications(
      photo: 'assets/images/notification_user_demo.png',
      commentBy: 'Dennis Nedry',
      postBy: 'Isla Nublar',
      postTitle: 'SOC2 compliance report',
      day: 'Wednesday',
      time: '9:42 AM',
      status: 0,
      type: 0,
    ),
  ];
}
