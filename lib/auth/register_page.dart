import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../common/header.dart';
import '../models/auth/register_model.dart';

class RegisterPage extends StatelessWidget {
  // メッセージ表示用
  String infoText = '';
  // 入力したメールアドレス・パスワード
  final mailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RegisterModel>(
      create: (_) => RegisterModel(),
      child: Scaffold(
        appBar: Header('ユーザー登録'),
        body: Consumer<RegisterModel>(
          builder: (context, model, child) {
            return Center(
              child: Container(
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // メールアドレス入力
                    TextFormField(
                        controller: mailEditingController,
                        decoration: InputDecoration(labelText: 'メールアドレス'),
                        onChanged: (text) {
                          model.mail = text;
                        }),
                    // パスワード入力
                    TextFormField(
                        controller: passwordEditingController,
                        decoration: InputDecoration(labelText: 'パスワード'),
                        obscureText: true,
                        onChanged: (text) {
                          model.password = text;
                        }),
                    Container(
                      padding: EdgeInsets.all(8),
                      // メッセージ表示
                      child: Text(infoText),
                    ),
                    Container(
                      width: double.infinity,
                      // ユーザー登録ボタン
                      child: ElevatedButton(
                        child: Text('ユーザー登録'),
                        onPressed: () async {
                          try {
                            await model.signUp();
                          } catch (e) {}
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),

        // 画面下にボタンの配置
        bottomNavigationBar:
            Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ButtonTheme(
              minWidth: 350.0,
              // height: 100.0,
              child: RaisedButton(
                  child: Text(
                    'ログイン',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  textColor: Colors.blue,
                  color: Colors.blue[50],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  // ボタンクリック後にアカウント作成用の画面の遷移する。
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
        ]),
      ),
    );
  }
}
