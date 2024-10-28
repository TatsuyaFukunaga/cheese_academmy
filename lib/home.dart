import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'messages.dart';
import 'root_page.dart';
import 'about_page.dart';
import 'course_page.dart';
import 'news_page.dart';
import 'access_page.dart';
import 'contact_page.dart';

final tabIndexProvider = StateProvider((ref) {
  // 今回は コード例なのでいきなり Myページ を表示
  // 0: Home
  // 1: About
  // 2: Course
  // 3: News
  // 4: Access
  // 5: Content
  return 0;
});

// ホーム画面全体
class Home extends ConsumerWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // インデックス
    final tabIndex = ref.watch(tabIndexProvider);

    // アイテムたち
    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: Messages.home,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.info_outline),
        label: Messages.about,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.menu_book_outlined),
        label: Messages.course,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.newspaper_outlined),
        label: Messages.news,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.map_outlined),
        label: Messages.access,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.contact_mail_outlined),
        label: Messages.contact,
      ),
    ];

    // 下のバー
    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.white, // バーの色
      selectedItemColor: Colors.red, // 選ばれたアイテムの色
      unselectedItemColor: Colors.black, // 選ばれていないアイテムの色
      currentIndex: tabIndex,
      onTap: (index) {
        // タップされたとき インデックスを変更する
        ref.read(tabIndexProvider.notifier).state = index;
      },
      elevation: 0.0,
    );

    // 画面たち
    const pages = [
      RootPage(), // 空のページ
      About(), // 空のページ
      Course(), // 空のページ
      News(), // 空のページ
      Access(), // 空のページ
      Contact(), // 空のページ
    ];

    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[200],
          body: pages[tabIndex],
          bottomNavigationBar: bar,
        ),
      ),
    );
  }
}
