import 'package:flutter_auth_cognito/aws/aws.dart';
//import 'package:flutter_auth_cognito/aws/providers/facebook.dart';
import 'package:flutter_auth_cognito/aws/providers/google.dart';
import 'package:flutter_auth_cognito/aws/secret.dart';

String authRes;

//Future<String> signInFacebook() async {
//  final facebookLoginResult = await signInWithFacebook();
//  final credentials = new Credentials(
//    cognitoIdentityPoolId,
//    cognitoUserPoolId,
//    cognitoClientId,
//    facebookLoginResult.accessToken.token,
//    'graph.facebook.com',
//  );
//
//  final api = Api(apiEndpointUrl, '/flutter', 'ap-southeast-2', credentials);
//
//  final result = await api.post({});
//
//  print(result.body);
//  return 'signInFacebook succeeded: $result';
//}

Future<String> signInGoogle() async {
  final googleSignInAuthentication = await signInWithGoogle();
  final credentials = new Credentials(
    cognitoIdentityPoolId,
    cognitoUserPoolId,
    cognitoClientId,
    googleSignInAuthentication.idToken,
    'accounts.google.com',
  );

//  final api = Api(apiEndpointUrl, '/flutter', 'ap-southeast-2', credentials);
//
//  final result = await api.post({});
//
//  print(result.body);
//  //  return 'signInGoogle succeeded: $result';
//  authRes = result;
//  return result;
  return 'Authenticate with google';
}
