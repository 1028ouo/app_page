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

// 將主頁改為有狀態組件，以便管理當前選擇的標籤
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTabIndex = 0; // 0: 為你推薦, 1: 正在跟隨

  // 當標籤切換時更新狀態
  void _onTabChanged(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(77.3), // 77 + 0.3 的高度
        child: Column(
          children: [
            CustomAppBar(
              selectedIndex: _selectedTabIndex,
              onTabChanged: _onTabChanged,
            ),
            Container(
              color: const Color.fromARGB(255, 78, 94, 109),
              height: 0.3,
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 21, 32, 43),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 根據選擇的標籤顯示不同的內容
            if (_selectedTabIndex == 0)
              // 為你推薦 標籤的內容
              const Column(
                children: [
                  ForwardContainer(),
                  PostContent(
                    userName: 'null∞llunTaKa',
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
              )
            else
              // 正在跟隨 標籤的內容
              const Column(
                children: [
                  PostContent(
                    userName: 'ちいかわグッズ案内',
                    userIcon: 'assets/recent_seicon.JPG', // 使用現有資源
                    postText:
                        '\\ 受注生産決定 / \n\n『ちいかわxMLB TOKYO SERIES』\n\n大人気★コラボグッズの\n受注生産が決定しました！！\n\n詳細は後日お知らせとのことです',
                    postImage: 'assets/following_first_post.jpeg', // 使用現有資源
                    comments: '74',
                    forwards: '1306',
                    likes: '7412',
                    views: '105萬',
                    verified: true,
                    userAccount: '@chiikawasan•3天',
                  ),
                  Divider(
                    color: Color.fromARGB(255, 78, 94, 109),
                    thickness: 0.3,
                  ), // 分隔線
                  PostContent(
                    userName: 'ちいかわ💫アニメ火金',
                    userIcon: 'assets/following_second_icon.jpeg', // 使用現有資源
                    postText: '🐇',
                    postImage: 'assets/following_second_post.jpeg', // 使用現有資源
                    comments: '1441',
                    forwards: '5.4萬',
                    likes: '30萬',
                    views: '1003萬',
                    verified: true,
                    userAccount: '@ngnchiikawa•6小時',
                  ),
                  Divider(
                    color: Color.fromARGB(255, 78, 94, 109),
                    thickness: 0.3,
                  ), // 分隔線
                  PostContent(
                    userName: 'ちいかわグッズ公式',
                    userIcon: 'assets/recent_icon.JPG', // 使用現有資源
                    postText:
                        '\\ 新商品 /\n『そろそろイースターなマスコット』\n\n（ちいかわ、ハチワレ、うさぎ）\n\n📝3月21日発売\n・ちいかわマーケット（オンラインストア）\n(chiikawamarket.jp)\n・ちいかわらんど\n（原宿店、大阪梅田店、福岡パルコ店、\n京都四条河原町店、TOKYO Station\n東京スカイツリータウン・ソラマチ店、名古屋パルコ店、仙台パルコ、札幌パルコ店、マルイシティ横浜店、広島パルコ店、心斎橋パルコ店）\n・ちいかわPOP UP STORE\n（サンシャインシティ アネックス、あべのハルカス近鉄本店、イオンモール大和、アティ郡山、イオンモール岡山、イオンモール日の出、イオンモール天童）\n#ちいかわ',
                    postImage: 'assets/following_third_post.jpeg', // 使用現有資源
                    comments: '10',
                    forwards: '1483',
                    likes: '9268',
                    views: '56萬',
                    verified: true,
                    userAccount: '@chiikawa_kouhou•1天',
                  ),
                ],
              ),
          ],
        ),
      ),
      floatingActionButton: const IncrementButton(),
      bottomNavigationBar: const CustomNavigationBar(),
    );
  }
}

// 修改 CustomAppBar 接收並使用外部傳入的選擇索引和回調函數
class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final int selectedIndex;
  final Function(int) onTabChanged;

  const CustomAppBar({
    super.key,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Size get preferredSize => const Size.fromHeight(77);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
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

    // 根據初始選擇設置動畫控制器的初始狀態
    if (widget.selectedIndex == 1) {
      _controller.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(CustomAppBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    // 當外部索引變化時，更新動畫
    if (widget.selectedIndex != oldWidget.selectedIndex) {
      if (widget.selectedIndex == 0) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTabChanged(int index) {
    if (widget.selectedIndex != index) {
      widget.onTabChanged(index);
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
                          color: widget.selectedIndex == 0
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
                          color: widget.selectedIndex == 1
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
        Expanded(
          // 用Expanded包裹Text以控制長度
          child: Text(
            ' $userAccount ',
            style: const TextStyle(
              color: Color.fromARGB(255, 139, 152, 165),
              fontSize: 15,
            ),
            overflow: TextOverflow.ellipsis, // 當文字過長時顯示省略號
            maxLines: 1, // 限制最多一行
          ),
        ),
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

class PostActions extends StatefulWidget {
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
  State<PostActions> createState() => _PostActionsState();
}

class _PostActionsState extends State<PostActions> {
  bool isLiked = false;
  bool isForwarded = false;
  late int likesCount;
  late int forwardsCount;

  @override
  void initState() {
    super.initState();
    // Convert string to int for manipulation
    likesCount = int.tryParse(widget.likes.replaceAll(',', '')) ?? 0;
    forwardsCount = int.tryParse(widget.forwards.replaceAll(',', '')) ?? 0;
  }

  // Helper method to format numbers with proper notation (e.g., "1.6萬")
  String formatCount(int count) {
    if (count >= 10000) {
      double inWan = count / 10000;
      return '${inWan.toStringAsFixed(1)}萬';
    } else if (count >= 1000) {
      // Format as x,xxx for counts over 1000
      return count.toString().replaceAllMapped(
          RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},');
    }
    return count.toString();
  }

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
                    widget.comments,
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
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isForwarded = !isForwarded;
                  if (isForwarded) {
                    forwardsCount++;
                  } else {
                    forwardsCount--;
                  }
                });
              },
              child: Row(
                children: [
                  Image(
                    image: const AssetImage('assets/forward.png'),
                    height: 18,
                    color: isForwarded
                        ? const Color.fromARGB(
                            255, 0, 186, 124) // Green color when forwarded
                        : const Color.fromARGB(255, 139, 152, 165),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Text(
                      formatCount(forwardsCount),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isForwarded
                            ? const Color.fromARGB(
                                255, 0, 186, 124) // Green color when forwarded
                            : const Color.fromARGB(255, 139, 152, 165),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isLiked = !isLiked;
                  if (isLiked) {
                    likesCount++;
                  } else {
                    likesCount--;
                  }
                });
              },
              child: Row(
                children: [
                  Icon(
                    isLiked ? Icons.favorite : Icons.favorite_border,
                    color: isLiked
                        ? const Color.fromARGB(
                            255, 249, 24, 128) // Pink color when liked
                        : const Color.fromARGB(255, 139, 152, 165),
                    size: 17,
                  ),
                  Expanded(
                    child: Text(
                      ' ${formatCount(likesCount)}',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: isLiked
                            ? const Color.fromARGB(
                                255, 249, 24, 128) // Pink color when liked
                            : const Color.fromARGB(255, 139, 152, 165),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
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
                    ' ${widget.views}',
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

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  // 判斷當前是否在搜尋頁面
  bool isSearchPage() {
    // 檢查當前路由是否為搜尋頁面
    return ModalRoute.of(context)?.settings.name == '/search';
  }

  @override
  Widget build(BuildContext context) {
    // 檢查當前是否在搜尋頁面
    final bool onSearchPage = isSearchPage();

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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // 首頁圖標 - 根據頁面狀態決定是實心還是空心
              GestureDetector(
                onTap: () {
                  // 如果當前不是在首頁，則返回首頁
                  if (onSearchPage) {
                    Navigator.pop(context);
                  }
                },
                child: onSearchPage
                    ? const Icon(Icons.home_outlined,
                        size: 32, color: Colors.white)
                    : const ImageIcon(AssetImage('assets/home.png'),
                        size: 32, color: Colors.white),
              ),

              // 搜尋圖標 - 根據頁面狀態決定粗細
              GestureDetector(
                onTap: () {
                  // 如果當前不是在搜尋頁面，則導航到搜尋頁面
                  if (!onSearchPage) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SearchPage(),
                        settings: const RouteSettings(name: '/search'),
                      ),
                    );
                  }
                },
                child: Icon(
                  Icons.search,
                  size: 32,
                  color: Colors.white,
                  weight: onSearchPage ? 800 : 400, // 在搜尋頁面時使用粗體圖標
                ),
              ),
              const ImageIcon(AssetImage('assets/grok.png'),
                  size: 52, color: Colors.white),
              const Icon(Icons.play_circle_outline,
                  size: 27, color: Colors.white),
              const ImageIcon(AssetImage('assets/notification.png'),
                  size: 27, color: Colors.white),
              const Icon(Icons.mail_outlined, size: 27, color: Colors.white),
            ],
          ),
        ),
      ],
    );
  }
}

// 當用戶點擊底部導航欄的搜尋圖標時顯示的搜尋頁面
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();

  // 搜尋記錄示例數據 - 增加了verified屬性
  final List<SearchRecord> _recentSearches = [
    SearchRecord(
      userIcon: 'assets/recent_icon.JPG',
      userName: 'ちいかわグッズ公式',
      userAccount: '@chiikawa_kouhou',
      verified: true,
    ),
    SearchRecord(
      userIcon: 'assets/third_icon.JPG',
      userName: 'ハスカップ07',
      userAccount: '@haskap1017',
      verified: true,
    ),
    SearchRecord(
      userIcon: 'assets/second_icon.JPG',
      userName: 'namaco moon 🌖',
      userAccount: '@namacomoon',
      verified: false,
    ),
    SearchRecord(
      userIcon: 'assets/recent_seicon.JPG',
      userName: 'ちいかわグッズ案内',
      userAccount: '@chiikawasan',
      verified: true,
    ),
    SearchRecord(
      userIcon: 'assets/first_icon.JPG',
      userName: 'Mobile Developer',
      userAccount: '@mobiledev',
      verified: true,
    ),
    SearchRecord(
      userIcon: 'assets/my_icon.JPG',
      userName: 'Meowowo',
      userAccount: '@meowmeow',
      verified: false,
    ),
  ];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 21, 32, 43),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 搜尋欄和取消按鈕 - 上移和加寬
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 0, bottom: 5), // 減少頂部間距上移搜索欄
              child: Row(
                children: [
                  // 搜尋欄 - 增加寬度
                  Expanded(
                    // flex: 6, // 增加搜索欄的相對寬度
                    child: Container(
                      height: 43,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 39, 51, 64),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        // 添加Center包裹內容以居中
                        child: TextField(
                          controller: _searchController,
                          style: const TextStyle(color: Colors.white),
                          // textAlign: TextAlign.center, // 文字居中
                          decoration: const InputDecoration(
                            icon: Padding(
                              padding: EdgeInsets.only(left: 120), // 調整搜索圖標位置
                              child: Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 139, 152, 165),
                              ),
                            ),
                            prefixIconConstraints:
                                BoxConstraints(minWidth: 30), // 調整圖標寬度
                            hintText: '搜尋',
                            hintStyle: TextStyle(
                              color: Color.fromARGB(255, 139, 152, 165),
                              fontSize: 18,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // 取消按鈕 - 減少寬度
                  Expanded(
                    flex: 0, // 減少取消按鈕的相對寬度
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        '取消',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17, // 稍微縮小字體
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // 最近的搜尋標題
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 3, bottom: 17),
              child: Text(
                '最近的搜尋',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // 搜尋記錄的水平列表
            SizedBox(
              height: 120,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: _recentSearches
                      .map((record) => Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: SearchRecordItem(record: record),
                          ))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      // 添加底部導航欄
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

// 搜尋記錄數據模型 - 新增verified屬性
class SearchRecord {
  final String userIcon;
  final String userName;
  final String userAccount;
  final bool verified;

  SearchRecord({
    required this.userIcon,
    required this.userName,
    required this.userAccount,
    required this.verified,
  });
}

// 單個搜尋記錄項目的UI - 加入了verified標記
class SearchRecordItem extends StatelessWidget {
  final SearchRecord record;

  const SearchRecordItem({
    super.key,
    required this.record,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73,
      child: Column(
        mainAxisSize: MainAxisSize.min, // 使Column只佔用需要的空間
        children: [
          // 用戶頭像
          ClipOval(
            child: Image(
              image: AssetImage(record.userIcon),
              height: 55,
              width: 55,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5), // 減少間距
          // 用戶名稱和認證標記
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Text(
                  record.userName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13, // 減小字體
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              if (record.verified)
                const Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: Icon(
                    Icons.verified,
                    color: Color.fromARGB(255, 29, 155, 240),
                    size: 12, // 小一點的認證標記
                  ),
                ),
            ],
          ),
          // 用戶帳號
          Text(
            record.userAccount,
            style: const TextStyle(
              color: Color.fromARGB(255, 139, 152, 165),
              fontSize: 13, // 減小字體
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
