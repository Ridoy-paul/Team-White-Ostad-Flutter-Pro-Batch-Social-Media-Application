import 'package:flutter/material.dart';
import 'package:team_white_social_media_app/presentation/screens/notification_screen/models/notifications.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    super.key,
    required this.notifications,
    required this.index,
  });

  final List<Notifications> notifications;
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: CircleAvatar(
        backgroundImage: ExactAssetImage(notifications[index].photo ?? ''),
      ),
      title: Visibility(
        visible: notifications[index].type == 0,
        replacement: Text(
          Notifications.followMessage,
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(text: notifications[index].commentBy),
              const TextSpan(
                  text: ' commented on ',
                  style: TextStyle(fontWeight: FontWeight.w200)),
              TextSpan(text: notifications[index].postBy),
              TextSpan(text: ' ${notifications[index].postTitle}'),
            ],
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 14),
          ),
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Text(
          'Last ${notifications[index].day} at ${notifications[index].time}',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      trailing: notifications[index].type == 1
          ? SizedBox(
              width: 81,
              height: 38,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "Follow",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  )))
          : null,
    );
  }
}
