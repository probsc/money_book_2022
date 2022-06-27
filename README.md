# money_book_2022

インターンシップ用 お小遣い帳 Flutter アプリ 2022年版

## 環境

- Dart 3.0.3
- Flutter 2.17.5
- Plugins
    - Dart 212.5744 JetBrains
    - Flutter 68.1.2 flutter.dev

## ライブラリ

- [cupertino_icons: ^1.0.5](https://pub.dev/packages/cupertino_icons)
- [dropdown_button2: ^1.6.2](https://pub.dev/packages/dropdown_button2)
- [google_fonts: ^3.0.1](https://pub.dev/packages/google_fonts)
- [intl: ^0.17.0](https://pub.dev/packages/intl)
- [package_info_plus: ^1.4.2](https://pub.dev/packages/package_info_plus)
- [path: ^1.8.1](https://pub.dev/packages/path/versions/1.8.1)
- [path_provider: ^2.0.11](https://pub.dev/packages/path_provider)
- [sqflite: ^2.0.2+1](https://pub.dev/packages/sqflite)

## 機能

### 一覧画面 (メイン画面)

- フローティングボタン (+) から登録画面を表示
- 入力した「分類」「タイトル」「日付」「金額」を一覧表示
- 任意の行のタップから編集画面を表示

### 登録 / 編集画面

- 「日付」「分類」「タイトル」「金額」の登録、編集が可能
- 編集時は削除が可能
