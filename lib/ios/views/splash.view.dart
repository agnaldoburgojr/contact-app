import 'package:contacts_app/ios/styles.dart';
import 'package:flutter/cupertino.dart';

class SplashView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: primaryColor,
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          Icon(
            CupertinoIcons.padlock,
            size: 72,
            color: accentColor,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Meus contatos',
            style: TextStyle(
              fontSize: 24,
              color: accentColor,
            ),
          ),
        ],
      )),
    );
  }
}
