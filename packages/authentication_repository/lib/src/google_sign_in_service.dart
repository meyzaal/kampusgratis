import 'package:authentication_repository/src/utils/utils.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Initialize GoogleSignIn
GoogleSignIn _googleSignIn = GoogleSignIn();

/// Asynchronously signs in the user using Google Sign-In.
///
/// Returns the Google Sign-In ID Token upon successful sign-in.
///
/// Throws [GoogleSignInServiceFailure] if any error occurs during the sign-in 
/// process.
Future<String> signInGoogle() async {
  try {
    // Attempt to sign in with Google
    final account = await _googleSignIn.signIn();

    // Throw an exception if the sign-in operation returns null (indicating 
    // failure)
    if (account == null) throw GoogleSignInServiceFailure();

    // Retrieve authentication details from the signed-in Google account
    final authentication = await account.authentication;

    // Retrieve the ID Token from the authentication details
    final idToken = authentication.idToken;

    // Throw an exception if the ID Token is null (indicating failure)
    if (idToken == null) throw GoogleSignInServiceFailure();

    // Return the Google Sign-In ID Token upon successful sign-in
    return idToken;
  } catch (e) {
    // Throw a generic GoogleSignInServiceFailure if any unexpected error occurs
    throw GoogleSignInServiceFailure();
  }
}
