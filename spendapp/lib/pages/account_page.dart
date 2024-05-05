import 'package:flutter/material.dart';
import 'package:spendapp/design/colors.dart';
import 'package:spendapp/pages/expenses_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: whiteColor),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExpensesPage()
                ),
            );
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
                'Профиль',
                style: TextStyle(
                  color: whiteColor,
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
            onPressed: () {},
          ),
        ],
      ),
      
        body: ListView(children: [
          Ellipse12(),
        ]
      ),
    );
  }
}
class Ellipse12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 140,
          height: 140,
          decoration: ShapeDecoration(
            color: Color(0xFF50C4DF),
            shape: OvalBorder(),
          ),
        ),
      ],
    );
  }
}