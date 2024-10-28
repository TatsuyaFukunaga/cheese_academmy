import 'package:flutter/material.dart';
// import 'text_style.dart';
import 'home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const home = Home();
  // アプリ
  const app = MaterialApp(
    home: home,
    debugShowCheckedModeBanner: false, // 開発版の印を外す
  );
  // 状態管理の riverpod スコープ
  const scopedApp = ProviderScope(child: app);
  // アプリ起動
  runApp(scopedApp);
}