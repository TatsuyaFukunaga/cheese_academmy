import 'package:flutter/material.dart';
import 'text_style.dart';

class RootPage extends StatelessWidget {
  const RootPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/header_logo.png'),
              const SizedBox(
                height: 80,
              ),
              Stack(alignment: AlignmentDirectional.topCenter, children: [
                Image.asset('assets/images/mainbg.png'),
                const Positioned(
                    top: 60,
                    child: Text(
                      '世界を変えるチーズを作ろう',
                      style: MyTextStyles.h1BoldWhite,
                    )),
                const Positioned(
                    top: 100,
                    child: Text(
                      'チーズ職人養成学校「チーズアカデミーTOKYO」',
                      style: MyTextStyles.h2White,
                    )),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
