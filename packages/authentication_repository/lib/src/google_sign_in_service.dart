import 'package:authentication_repository/src/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// A service class for handling Google Sign-In operations.
class GoogleSignInService {
  /// Constructor for the [GoogleSignInService] class.
  GoogleSignInService() : _googleSignIn = GoogleSignIn();

  /// Attempts to sign in with Google and returns the Google Sign-In ID Token 
  /// upon success.
  /// Throws a [GoogleSignInServiceFailure] exception if the sign-in operation 
  /// fails.
  Future<String> signIn() async {
    try {
      // Attempt to sign in with Google
      final account = await _googleSignIn.signIn();

      // Throw an exception if the sign-in operation returns null (indicating 
      // failure)
      if (account == null) {
        throw const GoogleSignInServiceFailure(
          'Failed to retrieve account information',
        );
      }

      // Retrieve authentication details from the signed-in Google account
      final authentication = await account.authentication;

      // Retrieve the ID Token from the authentication details
      final idToken = authentication.idToken;

      // Throw an exception if the ID Token is null (indicating failure)
      if (idToken == null) {
        throw const GoogleSignInServiceFailure(
            'Failed to retrieve credentials',);
      }

      // Return the Google Sign-In ID Token upon successful sign-in
      return idToken;
    } catch (e) {
      // Throw a generic GoogleSignInServiceFailure if any unexpected error
      // occurs
      throw const GoogleSignInServiceFailure();
    }
  }

  /// Signs out the current Google user.
  /// Throws a [GoogleSignInServiceFailure] exception if the sign-out operation
  /// fails.
  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
    } catch (e) {
      throw const GoogleSignInServiceFailure();
    }
  }

  /// Instance of the GoogleSignIn class used for Google Sign-In operations.
  final GoogleSignIn _googleSignIn;
}
