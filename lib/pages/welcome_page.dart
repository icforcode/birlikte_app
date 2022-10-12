import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'logIn_and_SignIn_page.dart';

class WelcomePage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  WelcomePage({super.key});

  final String _LogInText = "Giriş Yap";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeff3fc),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(children: [
            _welcomeText(),
            _welcomeTextDescription(),
            _welcomePicture,
            _applicationInformationText(),
            _logInButton(),
          ]),
        ),
      ),
    );
  }

  Widget get _welcomePicture => Padding(
        padding: const EdgeInsets.all(0),
        child: Card(
          margin: EdgeInsets.zero,
          elevation: 0,
          child: Image.asset("assets/images/welcome.jpg"),
        ),
      );
}

class _applicationInformationText extends StatefulWidget {
  const _applicationInformationText({
    Key? key,
  }) : super(key: key);

  @override
  State<_applicationInformationText> createState() =>
      _applicationInformationTextState();
}

class _applicationInformationTextState
    extends State<_applicationInformationText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      child: Center(
        child: Text(
            "Birlikte, içerisinde bulunduğunuz yapılarda sizin fikirlerinizi dikkate alan ve bu iyiliğinizi ödüllendiren bir platformdur.",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Color(0xff504a78))),
      ),
    );
  }
}

class _welcomeTextDescription extends StatelessWidget {
  const _welcomeTextDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: Text("Birlikte, Bir  Ödül-Öneri Sistemidir.",
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Color(0xff504a78))),
    );
  }
}

class _welcomeText extends StatelessWidget {
  const _welcomeText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("BİRLİKTE",
        style: Theme.of(context)
            .textTheme
            .headline3
            ?.copyWith(color: Color(0xff5685d7)));
  }
}

class _logInButton extends StatelessWidget {
  const _logInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.00),
                side: BorderSide(
                  color: Colors.transparent,
                  width: 3,
                ),
              ),
              primary: Color.fromARGB(255, 137, 196, 236),
              padding: EdgeInsets.symmetric(
                vertical: 12,
                horizontal:
                    MediaQuery.of(context).size.width / 3.5,
              ),
            ),
            child: Text(
              'Devam Et',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: LogInSignInPage(),
                      isIos: true));
            },
          )
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
