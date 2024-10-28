import 'package:flutter/material.dart';
import 'text_style.dart';

class Course extends StatelessWidget {
  const Course({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Text(
                'COURSE',
                style: MyTextStyles.h1BoldBlack,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '未経験からでもスタートができるよう、カリキュラムは多くの専門家や現役チーズ職人のアドバイスのもと、作られました。',
                style: MyTextStyles.h3Black,
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Image.asset('assets/images/course_01.jpg'),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Text(
                          '本格的な農園を使った実地研修',
                          style: MyTextStyles.h4Black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'チーズアカデミーでは、本格的な農園を使った実地研修を行うことができます。\nプロとして活躍するチーズ職人も使用するような、広大で環境も整った農園を余すところなく使い、卒業時には本格的なチーズを自分の力で作れる実践力の養成を目指します。',
                          style: MyTextStyles.h5Black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Text(
                          '必要な知識もしっかりと取得',
                          style: MyTextStyles.h4Black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'チーズ作りには、しっかりとした食に関する知識が欠かせません。\nチーズアカデミーでは、一流講師陣による、チーズ作りに必要ないろはを余すところなく学べます。チーズそのものでなく、栄養学全般を学ぶことも可能ですので、チーズ以外への展開も夢ではないでしょう。',
                          style: MyTextStyles.h5Black,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Image.asset('assets/images/course_02.jpg'),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Image.asset('assets/images/course_03.jpg'),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Text(
                          '卒業制作はティスティング審査あり',
                          style: MyTextStyles.h4Black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'チーズアカデミーでは最後の2ヶ月間で卒業制作を実施。\n卒業制作として、チーズ作りを実際に行います。卒業後、一般参加によるティスティング審査があるため、作り手の目線だけでなく、消費者の目線から、卒業制作作品としての<br>チーズを、しっかりと評価いただくことができます。',
                          style: MyTextStyles.h5Black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}
