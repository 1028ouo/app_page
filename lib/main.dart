import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // 移除右上角的 debug 標籤
      home: MyHomePage(title: 'assets/x_icon.png'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 21, 31, 42),
        toolbarHeight: 90, // 設定 AppBar 高度
        title: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
              child: Row(
                children: <Widget>[
                  const Expanded(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: ClipOval(
                        child: Image(
                          image: AssetImage('assets/my_icon.JPG'),
                          height: 32, // 根據需要調整圖片高度
                          width: 32, // 根據需要調整圖片寬度
                          fit: BoxFit.cover, // 確保圖片填滿圓形
                        ),
                      ),
                    ),
                  ),
                  const Spacer(), // 設定左右間隔
                  const Expanded(
                    child: Center(
                      child: Image(
                        image: AssetImage('assets/x_icon.png'),
                        height: 32, // 根據需要調整圖片高度
                      ),
                    ),
                  ),
                  const Spacer(), // 設定左右間隔
                  Expanded(
                    child: SizedBox(
                      height: 35,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          onPressed: null,
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 66, 83, 100),
                                width: 1), // 設定邊框顏色和寬度
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 0), // 設定左右間隔
                          ),
                          child: const Text(
                            '升級',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14, // 設定文字大小
                            ), // 設定文字顏色為白色
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(
                        '為你推薦',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // 設定文字大小
                        ), // 設定文字顏色為白色
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        '正在跟隨',
                        style: TextStyle(
                          color: Color.fromARGB(255, 139, 152, 165),
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // 設定文字大小
                        ), // 設定文字顏色為白色
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Center(
                        child: Container(
                      height: 4,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 29, 155, 240),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                  ),
                  Expanded(
                    child: Center(
                        child: Container(
                      height: 4,
                      width: 90,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 21, 31, 42),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.0),
          child: Container(
            color: const Color.fromARGB(255, 78, 94, 109),
            height: 1.0,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 21, 32, 43),
      body: Column(
        children: [
          Container(
            height: 30,
            padding: const EdgeInsets.only(left: 50),
            child: const Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage('assets/forward.png'),
                        height: 17, // 根據需要調整圖片高度
                        // fit: BoxFit.cover, // 確保圖片填滿圓形
                      ),
                      Text(
                        '𝓨𝓪𝓼 ☽ ❋已轉發',
                        style: TextStyle(
                            color: Color.fromARGB(255, 139, 152, 165),
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )),
          ), //轉發
          SizedBox(
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  widthFactor: 1.5,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/first_icon.JPG'),
                      height: 50, // 根據需要調整圖片高度
                      // fit: BoxFit.cover, // 確保圖片填滿圓形
                    ),
                  ),
                ), // 頭貼
                Expanded(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              height: 20,
                              child: Row(
                                children: [
                                  Text(
                                    'null∞llunTaKa ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.verified,
                                    color: Color.fromARGB(255, 29, 155, 240),
                                    size: 15,
                                  ),
                                  Text(
                                    ' @nullllllun•1天 ',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 139, 152, 165),
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.topRight,
                            child: SizedBox(
                              height: 15,
                              child: Center(
                                child: Text(
                                  '•••',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 139, 152, 165),
                                      fontSize: 15),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('ᝰ ✍🏻',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ), // 貼文內容
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 5.0, bottom: 5.0, left: 5.0, right: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0), // 設定圓角
                          child: const Image(
                            image: AssetImage('assets/first_post.JPG'),
                          ),
                        ),
                      ), // 貼文圖片
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Image(
                                      image: AssetImage('assets/comments.png'),
                                      height: 17,
                                      color:
                                          Color.fromARGB(255, 139, 152, 165)),
                                  Text('1',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 139, 152, 165),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300)), // 留言數
                                ],
                              ),
                            ),
                            Expanded(
                                child: Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/forward.png'),
                                    height: 18,
                                    color: Color.fromARGB(255, 139, 152, 165)),
                                Text('47',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 152, 165),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )), // 轉發數
                            Expanded(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Color.fromARGB(255, 139, 152, 165),
                                  size: 17,
                                ),
                                Text(' 783',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 152, 165),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )), // 愛心數
                            Expanded(
                                child: Row(
                              children: [
                                Image(
                                    image: AssetImage('assets/data.png'),
                                    height: 16,
                                    color: Color.fromARGB(255, 139, 152, 165)),
                                Text(' 1.6萬',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 152, 165),
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500)),
                              ],
                            )), // 查看數
                            Expanded(
                                child: Row(
                              children: [
                                Icon(
                                  Icons.bookmark_border,
                                  color: Color.fromARGB(255, 139, 152, 165),
                                  size: 19,
                                ),
                                SizedBox(
                                  width: 13,
                                ),
                                Image(
                                    image: AssetImage('assets/share.png'),
                                    height: 19,
                                    color: Color.fromARGB(255, 139, 152, 165)),
                              ],
                            )), // 貼文內容
                          ],
                        ),
                      ), // 按鈕
                    ],
                  ),
                ),
              ],
            ),
          ), // 第一則貼文
          const Divider(
            color: Color.fromARGB(255, 78, 94, 109),
            thickness: 1,
          ), // 分隔線
        ],
      ),
      floatingActionButton: const IncrementButton(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 57.0, // 設定按鈕寬度
      height: 57.0, // 設定按鈕高度
      child: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue, // 設定按鈕背景顏色
        shape: CircleBorder(), // 設定按鈕形狀為圓形
        disabledElevation: 0, // 移除按下時的陰影
        child: Icon(
          Icons.add,
          size: 30, // 設定加號大小
          color: Colors.white, // 設定加號顏色為白色
        ),
      ),
    );
  }
}

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: const Color.fromARGB(255, 78, 94, 109),
          height: 0.5,
        ),
        Container(
          color: const Color.fromARGB(255, 21, 31, 42),
          padding: const EdgeInsets.only(top: 2, bottom: 25), // 調整單一 padding
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ImageIcon(AssetImage('assets/home.png'),
                  size: 32, color: Colors.white),
              Icon(Icons.search, size: 32, color: Colors.white),
              ImageIcon(AssetImage('assets/grok.png'),
                  size: 52, color: Colors.white),
              Icon(Icons.play_circle_outline, size: 27, color: Colors.white),
              ImageIcon(AssetImage('assets/notification.png'),
                  size: 27, color: Colors.white),
              Icon(Icons.mail_outlined, size: 27, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}
