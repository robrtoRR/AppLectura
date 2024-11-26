/*
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';

class GetCredentials {
  Future<void> fetchUserGroups() async {
    try {
      AuthSession authSessions = await Amplify.Auth.fetchAuthSession(
          options: CognitoSessionOptions(getAWSCredentials: true));

      if (authSessions.isSignedIn) {
        final accessToken =
            (authSessions as CognitoAuthSession).userPoolTokens?.accessToken;
        Map<String, dynamic> payload = Jwt.parseJwt(accessToken!);

        print(payload);
      }
    } on AuthException catch (e) {
      print(e.message);
    }
  }
}
*/