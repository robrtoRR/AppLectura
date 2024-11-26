import 'package:amplify_flutter/amplify_flutter.dart';

class UserService {
  static Future<String?> getUserId() async {
    try {
      final user = await Amplify.Auth.getCurrentUser();
      return user.userId;
    } catch (e) {
      safePrint('Error getting user ID: $e');
      return null;
    }
  }
}
