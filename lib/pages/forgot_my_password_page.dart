import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:passwordfield/passwordfield.dart';

class ForgotMyPassPagePage extends StatefulWidget {
  ForgotMyPassPagePage({super.key});

  @override
  State<ForgotMyPassPagePage> createState() =>
      _ForgotMyPassPagePageState();
}

class _ForgotMyPassPagePageState
    extends State<ForgotMyPassPagePage> {
  FocusNode focusNodeTextField1st = FocusNode();

  FocusNode focusNodeTextField2nd = FocusNode();

  FocusNode focusNodeTextField3rd = FocusNode();

  FocusNode focusNodeTextField4th = FocusNode();

  final String _sendMessageText = "Giriş Yap";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffeff3fc),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  _signInText(),
                  _forgotmyPasswordPicture,
                  userInfoPhone(
                      focusNodeTextField3rd:
                          focusNodeTextField3rd),
                  _sendMessageButton(),
                ]),
          ),
        ),
      ),
    );
  }

  Widget get _forgotmyPasswordPicture => SizedBox(
        height: 200,
        width: 400,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Card(
            color: Colors.transparent,
            margin: EdgeInsets.zero,
            elevation: 0,
            child:
                Image.asset("assets/images/forgotpass.png"),
          ),
        ),
      );
}

class _forgotMyPasswordButton extends StatelessWidget {
  const _forgotMyPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {}, child: Text('Parolamı Unutttum'));
  }
}

class userInfoUserName extends StatelessWidget {
  const userInfoUserName({
    Key? key,
    required this.focusNodeTextField1st,
  }) : super(key: key);

  final FocusNode focusNodeTextField1st;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: TextField(
        buildCounter: (BuildContext context,
            {int? currentLength,
            bool? isFocused,
            int? maxLength}) {
          return Container();
        },
        keyboardType: TextInputType.name,
        autofocus: false,
        autofillHints: [AutofillHints.name],
        focusNode: focusNodeTextField1st,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.person_rounded),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff504a78),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(12.0))),
          labelText: "Kullanıcı Adı",
        ),
      ),
    );
  }
}

class userInfoEmail extends StatelessWidget {
  const userInfoEmail({
    Key? key,
    required this.focusNodeTextField2nd,
  }) : super(key: key);

  final FocusNode focusNodeTextField2nd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: TextField(
        buildCounter: (BuildContext context,
            {int? currentLength,
            bool? isFocused,
            int? maxLength}) {
          return Container();
        },
        keyboardType: TextInputType.name,
        autofocus: true,
        autofillHints: [AutofillHints.name],
        focusNode: focusNodeTextField2nd,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.mail_outline_rounded),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff504a78),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(12.0))),
          labelText: "Mail Adresiniz",
        ),
      ),
    );
  }
}

class userInfoPhone extends StatelessWidget {
  const userInfoPhone({
    Key? key,
    required this.focusNodeTextField3rd,
  }) : super(key: key);

  final FocusNode focusNodeTextField3rd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: TextField(
        buildCounter: (BuildContext context,
            {int? currentLength,
            bool? isFocused,
            int? maxLength}) {
          return Container();
        },
        keyboardType: TextInputType.phone,
        autofocus: false,
        autofillHints: [AutofillHints.telephoneNumber],
        focusNode: focusNodeTextField3rd,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.phone_android_rounded),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff504a78),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(12.0))),
          labelText: "Telefon Numarası",
        ),
      ),
    );
  }
}

class userInfoPassword extends StatefulWidget {
  const userInfoPassword({
    Key? key,
    required this.focusNodeTextField4th,
  }) : super(key: key);

  final FocusNode focusNodeTextField4th;

  @override
  State<userInfoPassword> createState() =>
      _userInfoPasswordState();
}

class _userInfoPasswordState
    extends State<userInfoPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: PasswordField(
        color: Colors.blue,
        passwordConstraint: r'.*[@$#.*].*',
        inputDecoration: PasswordDecoration(),
        hintText: 'Şifre',
        border: PasswordBorder(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade100,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue.shade100,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
                width: 2, color: Colors.red.shade200),
          ),
        ),
        errorMessage:
            'Küçük/büyük harf ve sayı içeren\n Minumum 6 karakterden oluşmalıdır. ',
      ), /* TextField(
        buildCounter: (BuildContext context,
            {int? currentLength,
            bool? isFocused,
            int? maxLength}) {
          return Container();
        },
        keyboardType: TextInputType.text,
        autofocus: true,
        autofillHints: [AutofillHints.name],
        focusNode: widget.focusNodeTextField4th,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.key_rounded),
          border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xff504a78),
              ),
              borderRadius:
                  BorderRadius.all(Radius.circular(12.0))),
          labelText: "Şifre",
        ),
      ), */
    );
  }
}

class _termsAndPolicyText extends StatelessWidget {
  const _termsAndPolicyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 25,
        ),
        Icon(
          Icons.check_circle_outline_rounded,
          color: Color.fromARGB(255, 89, 176, 235),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          child: Container(
              child: Column(children: [
            Text.rich(
              TextSpan(
                  text:
                      'Gizlilik Politikasını & Kullanım Şartlarını',
                  style: TextStyle(
                    fontSize: 13,
                    color: const Color(0xff504a78),
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // code to open / launch terms of service link here
                    }),
            ),
            Text('   Okudum, Anladım,  Onaylıyorum.'),
          ])),
        )
      ],
    );
  }
}

class _signInTextDescription extends StatelessWidget {
  const _signInTextDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text("Birlikte'ye Hoşgeldin.",
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Color(0xff504a78))),
    );
  }
}

class _signInText extends StatelessWidget {
  const _signInText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Parolamı Sıfırla",
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Color(0xff5685d7)));
  }
}

class _sendMessageButton extends StatelessWidget {
  const _sendMessageButton({
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
                  borderRadius:
                      BorderRadius.circular(25.00),
                  side: BorderSide(
                    color: Colors.transparent,
                    width: 3,
                  ),
                ),
                primary: Color.fromARGB(255, 137, 196, 236),
                padding: EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal:
                      MediaQuery.of(context).size.width /
                          3.5,
                ),
              ),
              child: Text(
                'Kod Gönder',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onPressed: () {}),
        ],
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
