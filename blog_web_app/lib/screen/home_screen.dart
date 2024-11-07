import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  // 웹뷰 컨트롤러 생성
  WebViewController webViewController = WebViewController()
  // 해당 url로 웹뷰가 로드됩니다. Uri.parse를 사용하여 입력한 url 문자열이 Uri 객체로 변환됩니다.
    ..loadRequest(Uri.parse('https://blod.codefactory.ai'))
  // js 실행을 허용합니다.
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Code factory'),
        backgroundColor: Colors.orange,
        // 가운데 정렬
        centerTitle: true,

        // AppBar에 액션 버튼을 추가할 수 있는 매개변수
        actions: [
          IconButton(
            onPressed: () {
              webViewController
                  .loadRequest(Uri.parse('https://blod.codefactory.ai'));
            },
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}