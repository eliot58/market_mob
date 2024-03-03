import 'package:flutter/material.dart';
import 'package:market_mob/market_app_icons.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff313131),
      appBar: AppBar(
        toolbarHeight: 40,
        bottomOpacity: 0,
        elevation: 0,
        backgroundColor: const Color(0xff313131),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Image.asset("assets/img/logo.png"),
            ),
            const Text("TODOMARKET", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600))
          ],
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Container()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xffE9E9E9),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff282828),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MarketApp.main),
            label: 'Main',
          ),
          BottomNavigationBarItem(
            icon: Icon(MarketApp.cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(MarketApp.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(MarketApp.user),
            label: 'User',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      endDrawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        backgroundColor: const Color(0xff282828),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xff313131)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset("assets/img/logo.png"),
                    ),
                    const Text("TODOMARKET", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xffE9E9E9)))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: null, 
                  child: const Text("Доставка", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: null, 
                  child: const Text("Стать партнером", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: null, 
                  child: const Text("Поставщики", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: null, 
                  child: const Text("Новости", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: null, 
                  child: const Text("Другие проекты", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: null, 
                  child: const Text("Вопрос-ответ", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9)))
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: (){}, 
                  child: const Text("Помощь", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9)))
                ),
              )
            ]
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: const Icon(MarketApp.panel, color: Color(0xffE9E9E9), size: 18),
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                    );
                  }
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text("Новости", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffE9E9E9))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      color: const Color(0xff282828),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Image.asset("assets/img/logo.png", width: 32, height: 32),
                                ),
                                const Text("Администрация TODOMARKET", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xffE9E9E9)))
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("Здраствуйте. Мы хотели бы выразить наши искренние благодарности за ваш интерес к сотрудничеству с TODOMARKET. Ваше доверие и интерес к нашей компании очень важны для нас. Однако после тщательного обсуждения и анализа, мы пришли к решению о том, что на данном этапе сотрудничество с ProfiGlass не ;ldsjflmslfs dflskjlmfvmsj jdlfmvsmjvflkjlvmsdf flvfmlfvmjlsfk jfjklkvlkfmvlfsj flvfsjvfkl lorem100 dskfjhosdjflkjslfk flsk jlkfksjkl jlsfdkj lsdjf lksjflkjslf jklsjf slfkj lsj lsjf lsdjdfljsldjfldsjflkdjsfljdslfkjsdjflk jf djdflsj l jsdlfjlkds jflksdj fljsdlfkjkldsj fl jld fdlk jjlsdlfjlkfjsdlkj slkdfj lkdj flfkjd ldjflkjsdkl jfkldsj lkfj slkdfjlsdkjf", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.6, color: Color(0xffE9E9E9)), maxLines: 6, overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      )
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text("Показать полностью", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff00A550)))
                  ),
                  SizedBox(
                    height: 200,
                    child: Card(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      color: const Color(0xff282828),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: Image.asset("assets/img/logo.png", width: 32, height: 32),
                                ),
                                const Text("Администрация TODOMARKET", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xffE9E9E9)))
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text("Здраствуйте. Мы хотели бы выразить наши искренние благодарности за ваш интерес к сотрудничеству с TODOMARKET. Ваше доверие и интерес к нашей компании очень важны для нас. Однако после тщательного обсуждения и анализа, мы пришли к решению о том, что на данном этапе сотрудничество с ProfiGlass не ;ldsjflmslfs dflskjlmfvmsj jdlfmvsmjvflkjlvmsdf flvfmlfvmjlsfk jfjklkvlkfmvlfsj flvfsjvfkl lorem100 dskfjhosdjflkjslfk flsk jlkfksjkl jlsfdkj lsdjf lksjflkjslf jklsjf slfkj lsj lsjf lsdjdfljsldjfldsjflkdjsfljdslfkjsdjflk jf djdflsj l jsdlfjlkds jflksdj fljsdlfkjkldsj fl jld fdlk jjlsdlfjlkfjsdlkj slkdfj lkdj flfkjd ldjflkjsdkl jfkldsj lkfj slkdfjlsdkjf", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.6, color: Color(0xffE9E9E9)), maxLines: 6, overflow: TextOverflow.ellipsis),
                            )
                          ],
                        ),
                      )
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: const Text("Показать полностью", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff00A550)))
                  )
                ],
              )
      
            ],
          ),
        ),
      ),
    );
  }
}