import 'package:flutter/material.dart';
import 'package:spendapp/design/colors.dart';
import 'package:spendapp/pages/account_page.dart';

class ExpensesPage extends StatelessWidget {
  const ExpensesPage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu, color: whiteColor),
          onPressed: () {
            // Действие при нажатии на иконку меню
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpensesPage()),
              );
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
            const SizedBox(width: 5.0), // Добавляем небольшое расстояние между кнопками
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
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, size: 25, color: whiteColor),
            onPressed: () {
              // Переход на страницу account.dart
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountPage()),
              );
            },
          ),
],
      ),
    );
  }
}