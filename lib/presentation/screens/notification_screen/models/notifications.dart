class Notifications {
  late String photo;
  late String commentBy;
  late String postBy;
  late String postTitle;
  late String day;
  late String time;
  late int type;
  late int status;
  static String followMessage =
      'Someone, from your contacts is on instagram as shagor2240';

  Notifications({
    required this.photo,
    required this.commentBy,
    required this.postBy,
    required this.postTitle,
    required this.day,
    required this.time,
    required this.type,
    required this.status,
  });
}
