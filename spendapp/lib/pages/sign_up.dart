import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spendapp/design/colors.dart';
import 'package:spendapp/pages/expenses_page.dart';
import 'package:spendapp/pages/home_page.dart';

class Sign_inPage extends StatelessWidget {
  const Sign_inPage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded, color: whiteColor),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()
                ),
            );
          },
        ),
      ),
      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      // ),
        body: ListView(children: [
          LoginPageBlack(),
        ]),
      );
  }
}

class LoginPageBlack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 500,
          padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 0),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF1C1C1E)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 34),
                    Text(
                      'Log In',
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 35,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   TextFormField(
                    style: TextStyle(
                      color: whiteColor,
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                    decoration: InputDecoration(
                      hintText: 'First name',
                      hintStyle: TextStyle(
                        color: Color(0xFF6F6F6F),
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                      border: InputBorder.none,
                      
                      filled: true, // Добавлено свойство filled
                      fillColor: threeColor, // Добавлено свойство fillColor
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    style: TextStyle(
                      color: Color(0xFF6F6F6F),
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      height: 0,
                      
                    ),
                    decoration: InputDecoration(
                      hintText: 'Last name',
                      hintStyle: TextStyle(
                        color: Color(0xFF6F6F6F),
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                      border: InputBorder.none,
                      filled: true, // Добавлено свойство filled
                      fillColor: threeColor, // Добавлено свойство fillColor
                    ),
                  ),
                    const SizedBox(height: 18),
                    SizedBox(
                      width: 280,
                      height: 38,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ExpensesPage()),
                    );
                          // Действие при нажатии на кнопку "Войти"
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: twoColor,
                          shadowColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(46),
                          ),
                        ),
                        child: Text(
                          'Войти',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                        ],
                      ),
                    ),
              const SizedBox(height: 0),
              Text(
                'Don’t have a account? Sign up',
                style: TextStyle(
                  color: Color(0xFF6F6F6F),
                  fontSize: 15,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}