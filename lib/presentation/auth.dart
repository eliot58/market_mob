import 'package:flutter/material.dart';
import 'package:market_mob/market_app_icons.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
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
            DefaultTabController(
              initialIndex: 0,
              length: 2, 
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 120, bottom: 40),
                    child: TabBar(
                      labelPadding: EdgeInsets.symmetric(vertical: 10),
                      indicatorColor: Colors.transparent,
                      labelColor: Color(0xff00A550),
                      unselectedLabelColor: Color(0xffE9E9E9),
                      tabs: [
                        Text('Регистрация', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                        Text('Войти', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                      ]
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: TabBarView(
                      children: [
                         Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xff282828),
                                  hintText: "ФИО",
                                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff00A550))),
                                  hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff616161)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xff282828),
                                  hintText: "Номер телефона",
                                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff00A550))),
                                  hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff616161)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xff282828),
                                  hintText: "E-mail",
                                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff00A550))),
                                  hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff616161)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  )
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(const Color(0xff00A550))
                                  ),
                                  onPressed: null,
                                  child: const Text("Зарегистрироваться", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xffE9E9E9))),
                                )
                              ),
                            )
                          ],
                         ),
                         Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: const Color(0xff282828),
                                  hintText: "E-mail",
                                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff00A550))),
                                  hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff616161)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                                  filled: true,
                                  fillColor: const Color(0xff282828),
                                  hintText: "Пароль",
                                  focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff00A550))),
                                  hintStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xff616161)),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8)
                                  )
                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(const Color(0xff00A550))
                                  ),
                                  onPressed: null,
                                  child: const Text("Войти", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xffE9E9E9))),
                                )
                              ),
                            )
                          ],
                         )
                      ]
                    ),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}