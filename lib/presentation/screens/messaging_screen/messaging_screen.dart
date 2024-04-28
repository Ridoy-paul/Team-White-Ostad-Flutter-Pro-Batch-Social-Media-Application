import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:team_white_social_media_app/presentation/presentation_utilities/assets_path.dart';
import 'package:team_white_social_media_app/presentation/presentation_utilities/theme/app_theme_data.dart';

import '../profile_screen/widgets/image_with_round_border.dart';

class MessagingScreen extends StatefulWidget {
  const MessagingScreen({super.key});

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();
}

class _MessagingScreenState extends State<MessagingScreen> {
  final List<types.Message> _messages = [];
  final _user = const types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Chat(
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
        theme: AppThemeData.defaultChatTheme,
      ),
    );
  }

  AppBar get appBar {
    return AppBar(
      leading: const Icon(Icons.arrow_back_ios),
      title: Row(
        children: [
          const ImageWithRoundBorder(
            imgPath: AssetsPath.userDemoProfilePic ?? '',
          ),
          const SizedBox(
            width: 12,
          ),
          chatAppBarUserInfo('Benjamin Moores', '11:45 AM'),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.call_outlined),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.videocam_outlined),
        ),
      ],
    );
  }

  Column chatAppBarUserInfo(String userName, String time) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          userName,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 16),
        ),
        Text(
          "Last seen $time",
          style: Theme.of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: randomString(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  String randomString() {
    final random = Random.secure();
    final values = List<int>.generate(16, (i) => random.nextInt(255));
    return base64UrlEncode(values);
  }
}
