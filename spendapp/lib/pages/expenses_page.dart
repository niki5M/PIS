import 'package:flutter/material.dart';
import 'package:spendapp/design/colors.dart';
import 'package:spendapp/pages/account_page.dart';
import 'package:spendapp/pages/home_page.dart';
import 'package:spendapp/pages/menu.dart';
import 'package:spendapp/pages/sign_in.dart';


class ExpensesPage extends StatefulWidget {
  const ExpensesPage({super.key});

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: whiteColor),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                // Действие при нажатии на первую кнопку
              },
              child: const Text(
                'Расходы',
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              
            ),
            const SizedBox(width: 16.0), // Добавляем небольшое расстояние между кнопками
      TextButton(
        onPressed: () {
          // Действие при нажатии на вторую кнопку
        },
        child: const Text(
          'Доходы',
          style: TextStyle(
            color: fiveColor,
            fontSize: 15,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
            // Другие кнопки
          ],),
          actions: [
    IconButton(
      icon: const Icon(Icons.account_circle, size: 25, color: whiteColor),
      onPressed: () {
        Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountPage()),
              );
      },
    ),
  ],
        // Другие элементы AppBar
      ),
      drawer: Drawer(
        backgroundColor: twoColor,
        child: ListView(
          children: [

            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF7147E7), // Цвет фона контейнера
              ),
            accountName: const Text('Элвин Николаенко'),
            accountEmail: const Text('elvin@gmail.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/accout.png'),
              // backgroundColor: Color.fromRGBO(80, 196, 223, 100),
            ),
            ),
    ListTile(
      leading: ImageIcon(
        const AssetImage('assets/images/radar.png'),
        color: Color(0xFF292D32),
        size: 24, // Укажите размер иконки
        
      ),
      title: const Text('Главная',
      style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            height: 0,
          ),),
      
      onTap: () {
        // Действие при нажатии на пункт "Главная"
        Navigator.pop(context);
      },
    ),
            ListTile(
              leading: ImageIcon(
        const AssetImage('assets/images/receipt-item.png'),
        color: Color(0xFF292D32),
        size: 24, // Укажите размер иконки
        
      ),
      title: const Text('Категории',
      style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            height: 0,
          ),),
      
      onTap: () {
        // Действие при нажатии на пункт "Главная"
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CategoryPage()),);
      },
            ),
            ListTile(
              leading: ImageIcon(
              const AssetImage('assets/images/dollar-square.png'),
              color: Color(0xFF292D32),
              size: 24, // Укажите размер иконки
              
            ),
            title: const Text('Регулярные платежи',
            style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),),
      
      onTap: () {
        // Действие при нажатии на пункт "Главная"
        Navigator.pop(context);
      },
            ),
            ListTile(
              leading: ImageIcon(
              const AssetImage('assets/images/clock.png'),
              color: Color(0xFF292D32),
              size: 24, // Укажите размер иконки
              
            ),
            title: const Text('Напоминания',
            style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),),
      
      onTap: () {
        // Действие при нажатии на пункт "Главная"
        Navigator.pop(context);
      },
            ),
            ListTile(
              leading: ImageIcon(
              const AssetImage('assets/images/setting-2.png'),
              color: Color(0xFF292D32),
              size: 24, // Укажите размер иконки
              
            ),
            title: const Text('Настройки',
            style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),),
      
      onTap: () {
        // Действие при нажатии на пункт "Главная"
        Navigator.pop(context);
      },
            ),
            ListTile(
              leading: ImageIcon(
              const AssetImage('assets/images/trash.png'),
              color: Color(0xFF0ED5BD),
              size: 24, // Укажите размер иконки
              
            ),
            title: const Text('Выход с аккаунта',
            style: TextStyle(
                  color: Color(0xFF0ED5BD),
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
      
      onTap: () {
        // Действие при нажатии на пункт "Главная"
        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Sign_inPage()),
                      );
      },
      ),
          ],
        ),
      ),
    );
  }
}