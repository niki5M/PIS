import 'package:flutter_svg/flutter_svg.dart';
import 'package:spendapp/design/colors.dart';
import 'package:spendapp/pages/sign_in.dart';
// import 'package:spendapp/design/images.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(children: [
          UpperAndLower(),
        ]
      ),
    );
  }
}

class Upper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 294,
          height: 176,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Container(
                  width: 75,
                  height: 74.01,
                  child: SvgPicture.asset(
                    'assets/images/logo.svg',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'SpendWise',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: whiteColor,
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Text(
                  'твой помощник в сохранении бюджета',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromRGBO(197, 197, 197, 1),
                    fontSize: 13,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Lower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 294,
          height: 120,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 280,
                height: 38,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sign_inPage()),
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
              const SizedBox(height: 18),
              SizedBox(
                width: 280,
                height: 38,
                child: ElevatedButton(
                  onPressed: () {
                    // Действие при нажатии на кнопку "Регистрация"
                  },
                  style: ElevatedButton.styleFrom(
                    shadowColor: twoColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(46),
                    ),
                  ),
                  child: Text(
                    'Регистрация',
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
      ],
    );
  }
}
class UpperAndLower extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Upper(), // Ваш первый виджет
        SizedBox(height: 320), // Отступ между виджетами
        Lower(), // Ваш второй виджет
      ],
    );
  }
}