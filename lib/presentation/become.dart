import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market_mob/market_app_icons.dart';

class BecomePage extends StatefulWidget {
  const BecomePage({super.key});

  @override
  State<BecomePage> createState() => _BecomePageState();
}

class _BecomePageState extends State<BecomePage> {
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
              const Text("Стать партнером", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xffE9E9E9))),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: RichText(
                  text: const TextSpan(
                    text: "Здравствуйте.\n",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff00A550)),
                    children: [
                      TextSpan(text: "Наш путь по созданию различных сервисов для профессионалов оконного рынка привел к созданию такого маркета. У нас в сервисах, регистрируются множество коллег, которые постоянно ищут в наличии, и на заказ, крепеж, пену, фурнитуру, и Мы помогаем им чем можем. В процессе собралось много контактов поставщиков материалов, которые ни раз выходили с предложением разместить рекламу. у нас в каналах и на наших сайтах своих товаров. Поэтому Мы решили создать такой инструмент продаж как этот маркет плэйс.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color(0xffE9E9E9), height: 1.6))
                    ]
                  )
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("В чем преимущество и отличие от других известных маркетов?", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff00A550))),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset("assets/img/target.svg"),
                        ),
                        const Flexible(child: Text("Мы, как всегда, ориентирование на узкий круг профессионалов оконной отрасли, и как всегда хотим упростить работу монтажника, и дилера, а также помочь Вам сэкономить время, и деньги.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.6, color: Color(0xffE9E9E9))))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset("assets/img/earth.svg"),
                        ),
                        const Flexible(child: Text("Мы делаем удобным поиск по Вашим магазинам, и можем собрать нужные товары в одном месте, на нашем складе, где покупатель сможет забрать все в одном месте.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.6, color: Color(0xffE9E9E9))))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset("assets/img/loop.svg"),
                        ),
                        const Flexible(child: Text("Мы, как всегда, ориентирование на узкий круг профессионалов оконной отрасли, и как всегда хотим упростить работу монтажника, и дилера, а также помочь Вам сэкономить время, и деньги.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.6, color: Color(0xffE9E9E9))))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset("assets/img/truck.svg"),
                        ),
                        const Flexible(child: Text("Мы запускаем собственный сервис todo.доставка, которая может привезти сборный груз из нескольких магазинов прямо на адрес монтажа.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.6, color: Color(0xffE9E9E9))))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: SvgPicture.asset("assets/img/star.svg"),
                        ),
                        const Flexible(child: Text("Мы уверены, этот инструмент сможет помочь как поставщикам материалов, так и профессиональным покупателям сэкономить время, и деньги.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, height: 1.6, color: Color(0xffE9E9E9))))
                      ],
                    ),
                  ),
                  
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text("Спасибо Вам за уделенное время, и надеемся на добрую дружбу! Чтобы начать в качестве поставщика, зарегистируйтесь через компьютер.", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: Color(0xff00A550))),
              ),
      
      
            ],
          ),
        ),
      ),
    );
  }
}