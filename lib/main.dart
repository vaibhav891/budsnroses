import 'package:budsnroses/application/auth/auth_bloc.dart';
import 'package:budsnroses/application/sign_in/sign_in_form_bloc.dart';
import 'package:budsnroses/domain/Auth/i_auth_facade.dart';
import 'package:budsnroses/infrastructure/auth/firebase_auth_facade.dart';
import 'package:budsnroses/presentation/add_address_page.dart';
import 'package:budsnroses/presentation/addresspage.dart';
import 'package:budsnroses/presentation/homepage.dart';
import 'package:budsnroses/presentation/productpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  IAuthFacade iAuthFacade;
  MyApp() {
    iAuthFacade = FirebaseAuthFacade(firebaseAuth, googleSignIn);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) {
            return AuthBloc(iAuthFacade)..add(AuthEvent.authCheckRequested());
          },
        ),
        BlocProvider<SignInFormBloc>(
            create: (context) => SignInFormBloc(iAuthFacade))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
