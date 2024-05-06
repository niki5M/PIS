// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:spendapp/design/colors.dart';
import 'package:spendapp/pages/account_page.dart';
import 'package:spendapp/pages/expenses_page.dart';
import 'package:spendapp/pages/sign_in.dart';


class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
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
                'Категории',
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ExpensesPage()),);
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
      body:ListView(children: [
          Category(),
        ] ,
      ),);

  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 800,
          padding: const EdgeInsets.only(top: 0, bottom: 100),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: const Color(0xFF1C1C1E)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              Container(
                width: 295,
                height: 38,
                padding: const EdgeInsets.only(top: 4, left: 4, right: 8, bottom: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3E3E40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x1E000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 33.03,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFE04DC0),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 10),
              Text(
                'Переводы',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
                    // Другие элементы
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 295,
                height: 38,
                padding: const EdgeInsets.only(top: 4, left: 4, right: 8, bottom: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3E3E40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x1E000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 33.03,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF4FC5DF),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 10),
              Text(
                'Супермаркеты',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
                    // Другие элементы
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 295,
                height: 38,
                padding: const EdgeInsets.only(top: 4, left: 4, right: 8, bottom: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3E3E40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x1E000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 33.03,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF7147E7),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 10),
              Text(
                'Дом, ремонт',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
                    // Другие элементы
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 295,
                height: 38,
                padding: const EdgeInsets.only(top: 4, left: 4, right: 8, bottom: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3E3E40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x1E000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 33.03,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFEEC662),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 10),
              Text(
                'Кафе',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
                    // Другие элементы
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 295,
                height: 38,
                padding: const EdgeInsets.only(top: 4, left: 4, right: 8, bottom: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3E3E40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x1E000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 33.03,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFFD788D),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 10),
              Text(
                'Досуг',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
                    // Другие элементы
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 295,
                height: 38,
                padding: const EdgeInsets.only(top: 4, left: 4, right: 8, bottom: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3E3E40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x1E000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 33.03,
                      decoration: const ShapeDecoration(
                        color: Color(0xFF329E4A),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 10),
              Text(
                'Транспорт',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
                    // Другие элементы
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 295,
                height: 38,
                padding: const EdgeInsets.only(top: 4, left: 4, right: 8, bottom: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFF3E3E40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(52),
                  ),
                  shadows: [
                    BoxShadow(
                      color: const Color(0x1E000000),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 34,
                      height: 33.03,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFE94848),
                        shape: OvalBorder(),
                      ),
                    ),
                    const SizedBox(width: 10),
              Text(
                'Спорт',
                style: TextStyle(
                  color: Color(0xFFF8F8F8),
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),),
                    // Другие элементы
                  ],
                ),
              ),
              IconButton(
              icon: const ImageIcon(
                const AssetImage('assets/images/plus.png') ),
              onPressed: () {
                Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CategoryPage()),
                      );
      },
    ),// Другие элементы
            ],
          ),
        ),
      ],
    );
  }
}