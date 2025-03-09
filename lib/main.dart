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
        toolbarHeight: 77, // 設定 AppBar 高度
        title: Column(
          children: <Widget>[
            Padding(
              // height: 40,
              padding: const EdgeInsets.only(top: 0.0),
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
                      height: 33,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: OutlinedButton(
                          onPressed: null,
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(
                                color: Color.fromARGB(255, 66, 83, 100),
                                width: 1), // 設定邊框顏色和寬度
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0), // 設定左右間隔
                          ),
                          child: const Text(
                            '升級',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13, // 設定文字大小
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
                          fontSize: 15, // 設定文字大小
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
                          fontSize: 15, // 設定文字大小
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
                      height: 3,
                      width: 70,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 29, 155, 240),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )),
                  ),
                  Expanded(
                    child: Center(
                        child: Container(
                      height: 3,
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
            height: 0.3,
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 21, 32, 43),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ForwardContainer(),
            PostContent(
              userName: 'null∞llunTaKa',
              userIcon: 'assets/first_icon.JPG',
              postText: 'ᝰ✍🏻',
              postImage: 'assets/first_post.png',
              comments: '1',
              forwards: '47',
              likes: '783',
              views: '1.6萬',
              verified: true,
              userAccount: '@nullllllun•1天',
            ),
            Divider(
              color: Color.fromARGB(255, 78, 94, 109),
              thickness: 0.3,
            ), // 分隔線
            PostContent(
              userName: 'namaco moon 🌖',
              userIcon: 'assets/second_icon.JPG',
              postText:
                  'just realized she uses her right hand for powder/jinx and her left hand for caitlyn. oh, these are her girls and she was born with two hands to be able to love them both',
              postImage: 'assets/second_post.JPG',
              comments: '1',
              forwards: '47',
              likes: '783',
              views: '1.6萬',
              verified: false,
              userAccount: '@namacomoon•1天',
            ),
            Divider(
              color: Color.fromARGB(255, 78, 94, 109),
              thickness: 0.3,
            ), // 分隔線
            PostContent(
              userName: 'null∞llunTaKa',
              userIcon: 'assets/first_icon.JPG',
              postText: 'ᝰ ✍🏻',
              postImage: 'assets/first_post.png',
              comments: '1',
              forwards: '47',
              likes: '783',
              views: '1.6萬',
              verified: true,
              userAccount: '@nullllllun•1天',
            ),
          ],
        ),
      ),
      floatingActionButton: const IncrementButton(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class ForwardContainer extends StatelessWidget {
  const ForwardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      padding: const EdgeInsets.only(left: 35),
      child: const Align(
        alignment: Alignment.bottomLeft,
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/forward.png'),
              height: 15, // 根據需要調整圖片高度
              // fit: BoxFit.cover, // 確保圖片填滿圓形
            ),
            Text(
              ' 𝓨𝓪𝓼 ☽ ❋已轉發',
              style: TextStyle(
                  color: Color.fromARGB(255, 139, 152, 165),
                  fontSize: 13,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

class PostContent extends StatelessWidget {
  final String userName;
  final String userIcon;
  final String postText;
  final String postImage;
  final String comments;
  final String forwards;
  final String likes;
  final String views;
  final bool verified;
  final String userAccount;

  const PostContent({
    super.key,
    required this.userName,
    required this.userIcon,
    required this.postText,
    required this.postImage,
    required this.comments,
    required this.forwards,
    required this.likes,
    required this.views,
    required this.verified,
    required this.userAccount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserIcon(userIcon: userIcon),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserInfoRow(
                    userName: userName,
                    verified: verified,
                    userAccount: userAccount),
                PostText(postText: postText),
                const SizedBox(height: 5),
                PostImage(postImage: postImage),
                const SizedBox(height: 5),
                PostActions(
                  comments: comments,
                  forwards: forwards,
                  likes: likes,
                  views: views,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class UserIcon extends StatelessWidget {
  final String userIcon;

  const UserIcon({super.key, required this.userIcon});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image(
        image: AssetImage(userIcon),
        height: 45, // 根據需要調整圖片高度
        width: 45, // 根據需要調整圖片寬度
        fit: BoxFit.cover, // 確保圖片填滿圓形
      ),
    ); // 頭貼
  }
}

class UserInfoRow extends StatelessWidget {
  final String userName;
  final String userAccount;
  final bool verified;

  const UserInfoRow(
      {super.key,
      required this.userName,
      required this.verified,
      required this.userAccount});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$userName ',
          style: const TextStyle(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        if (verified)
          const Icon(
            Icons.verified,
            color: Color.fromARGB(255, 29, 155, 240),
            size: 15,
          ),
        Text(
          ' $userAccount ',
          style: const TextStyle(
            color: Color.fromARGB(255, 139, 152, 165),
            fontSize: 15,
          ),
        ),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.only(right: 1.0),
          child: Icon(Icons.more_horiz,
              color: Color.fromARGB(255, 92, 110, 126), size: 20),
        ),
      ],
    );
  }
}

class PostText extends StatelessWidget {
  final String postText;

  const PostText({super.key, required this.postText});

  @override
  Widget build(BuildContext context) {
    return Text(postText,
        style: const TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500));
  }
}

class PostImage extends StatelessWidget {
  final String postImage;

  const PostImage({super.key, required this.postImage});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0), // 設定圓角
      child: Image(
        image: AssetImage(postImage),
      ),
    );
  }
}

class PostActions extends StatelessWidget {
  final String comments;
  final String forwards;
  final String likes;
  final String views;

  const PostActions({
    super.key,
    required this.comments,
    required this.forwards,
    required this.likes,
    required this.views,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            const Image(
                image: AssetImage('assets/comments.png'),
                height: 19,
                color: Color.fromARGB(255, 139, 152, 165)),
            Text(comments,
                style: const TextStyle(
                    color: Color.fromARGB(255, 139, 152, 165),
                    fontSize: 12,
                    fontWeight: FontWeight.w300)), // 留言數
          ],
        ),
        const SizedBox(width: 30),
        Row(
          children: [
            const Image(
                image: AssetImage('assets/forward.png'),
                height: 18,
                color: Color.fromARGB(255, 139, 152, 165)),
            Text(forwards,
                style: const TextStyle(
                    color: Color.fromARGB(255, 139, 152, 165),
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
          ],
        ), // 轉發數
        const SizedBox(width: 30),
        Row(
          children: [
            const Icon(
              Icons.favorite_border,
              color: Color.fromARGB(255, 139, 152, 165),
              size: 17,
            ),
            Text(' $likes',
                style: const TextStyle(
                    color: Color.fromARGB(255, 139, 152, 165),
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
          ],
        ), // 愛心數
        const SizedBox(width: 30),
        Row(
          children: [
            const Image(
                image: AssetImage('assets/data.png'),
                height: 15,
                color: Color.fromARGB(255, 139, 152, 165)),
            Text(' $views',
                style: const TextStyle(
                    color: Color.fromARGB(255, 139, 152, 165),
                    fontSize: 12,
                    fontWeight: FontWeight.w500)),
          ],
        ), // 查看數
        const SizedBox(width: 20),
        const Row(
          children: [
            Icon(
              Icons.bookmark_border,
              color: Color.fromARGB(255, 139, 152, 165),
              size: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Image(
                image: AssetImage('assets/share.png'),
                height: 17,
                color: Color.fromARGB(255, 139, 152, 165)),
          ],
        ), // 貼文內容
      ],
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
