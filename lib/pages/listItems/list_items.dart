class NotificationItem {
  final String title;
  final String message;
  final String time;
  final String imagePath; // Add imagePath property

  NotificationItem({
    required this.title,
    required this.message,
    required this.time,
    required this.imagePath, // Update the constructor to include imagePath
  });
}
