import 'package:flutter/material.dart';
import 'text_style.dart';

class About extends StatelessWidget {
  const About({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Row(
                children: [
                  Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                    flex: 8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'ABOUT',
                          style: MyTextStyles.h1BoldYellow,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'チーズアカデミーについて',
                          style: MyTextStyles.h2Black,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'チーズアカデミーは、チーズ職人養成学校です。',
                          style: MyTextStyles.h3Black,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'チーズの素晴らしさを、自給自足を通じて、できるだけ多くの人に知っていただきたい。\nそして、食卓にはいつもチーズがあった、あの頃の当たり前をこの手で取り戻したい。',
                          style: MyTextStyles.h3Black,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'そんな思いから、チーズ職人養成学校「チーズアカデミーTOKYO」は歩みを始めています。',
                          style: MyTextStyles.h3Black,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          '卒業後、チーズ自給自足のバックアップはもちろんのこと、チーズ職人への就職・転職もサポートします。',
                          style: MyTextStyles.h3Black,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/images/about_04.jpg'),
                    Image.asset('assets/images/about_03.jpg'),
                    Image.asset('assets/images/about_02.jpg'),
                    Image.asset('assets/images/about_01.jpg'),
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
