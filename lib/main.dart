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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(77.3), // 77 + 0.3 的高度
        child: Column(
          children: [
            const CustomAppBar(),
            Container(
              color: const Color.fromARGB(255, 78, 94, 109),
              height: 0.3,
            ),
          ],
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
              comments: '26',
              forwards: '1700',
              likes: '1.9萬',
              views: '20萬',
              verified: false,
              userAccount: '@namacomoon•1天',
            ),
            Divider(
              color: Color.fromARGB(255, 78, 94, 109),
              thickness: 0.3,
            ), // 分隔線
            PostContent(
              userName: 'ハスカップ07',
              userIcon: 'assets/third_icon.JPG',
              postText: '河津桜満開な葛西臨海公園が美しいです',
              postImage: 'assets/third_post.jpeg',
              comments: '12',
              forwards: '864',
              likes: '7798',
              views: '14萬',
              verified: true,
              userAccount: '@haskap1017•1天',
            ),
          ],
        ),
      ),
      floatingActionButton: const IncrementButton(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(77);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0; // 0: 為你推薦, 1: 正在跟隨
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTabChanged(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
        if (index == 0) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 獲取螢幕寬度用於計算位置
    final screenWidth = MediaQuery.of(context).size.width;

    // 計算每個標籤佔據的寬度
    final tabWidth = screenWidth / 2;

    // 線條寬度
    const lineWidth1 = 70.0; // 為你推薦的線寬
    const lineWidth2 = 70.0; // 正在跟隨的線寬

    return AppBar(
      backgroundColor: const Color.fromARGB(255, 21, 31, 42),
      toolbarHeight: 77,
      title: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/my_icon.JPG'),
                      height: 32,
                      width: 32,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Expanded(
                child: Center(
                  child: Image(
                    image: AssetImage('assets/x_icon.png'),
                    height: 32,
                  ),
                ),
              ),
              const Spacer(),
              Expanded(
                child: SizedBox(
                  height: 33,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                      onPressed: null,
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 66, 83, 100), width: 1),
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                      ),
                      child: const Text(
                        '升級',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onTabChanged(0),
                    child: Center(
                      child: Text(
                        '為你推薦',
                        style: TextStyle(
                          color: _selectedIndex == 0
                              ? Colors.white
                              : const Color.fromARGB(255, 139, 152, 165),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onTabChanged(1),
                    child: Center(
                      child: Text(
                        '正在跟隨',
                        style: TextStyle(
                          color: _selectedIndex == 1
                              ? Colors.white
                              : const Color.fromARGB(255, 139, 152, 165),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
            child: AnimatedBuilder(
              animation: _animation,
              builder: (context, child) {
                // 計算線條位置
                final centerPosition1 = tabWidth / 2 - lineWidth1 / 2 - 7;
                final centerPosition2 =
                    tabWidth + tabWidth / 2 - lineWidth2 / 2 - 23;

                // 根據動畫值計算當前位置
                final currentPosition =
                    centerPosition1 * (1 - _animation.value) +
                        centerPosition2 * _animation.value;

                // 根據動畫值計算當前寬度
                final currentWidth = lineWidth1 * (1 - _animation.value) +
                    lineWidth2 * _animation.value;

                return Stack(
                  children: [
                    // 藍色線條，精準定位在標籤中心
                    Positioned(
                      left: currentPosition,
                      child: Container(
                        height: 3,
                        width: currentWidth,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 29, 155, 240),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
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
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400));
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
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Image(
                    image: AssetImage('assets/comments.png'),
                    height: 19,
                    color: Color.fromARGB(255, 139, 152, 165)),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    comments,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 139, 152, 165),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Image(
                    image: AssetImage('assets/forward.png'),
                    height: 18,
                    color: Color.fromARGB(255, 139, 152, 165)),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    forwards,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 139, 152, 165),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Icon(
                  Icons.favorite_border,
                  color: Color.fromARGB(255, 139, 152, 165),
                  size: 17,
                ),
                Expanded(
                  child: Text(
                    ' $likes',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 139, 152, 165),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 1,
            child: Row(
              children: [
                const Image(
                    image: AssetImage('assets/data.png'),
                    height: 15,
                    color: Color.fromARGB(255, 139, 152, 165)),
                Expanded(
                  child: Text(
                    ' $views',
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 139, 152, 165),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),

          // 最後兩個圖標保持固定位置
          const Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.bookmark_border,
                  color: Color.fromARGB(255, 139, 152, 165),
                  size: 20,
                ),
                SizedBox(width: 10),
                Image(
                    image: AssetImage('assets/share.png'),
                    height: 17,
                    color: Color.fromARGB(255, 139, 152, 165)),
              ],
            ),
          ),
        ],
      ),
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
          height: 0.3,
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
