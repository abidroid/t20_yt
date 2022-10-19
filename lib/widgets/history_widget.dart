import 'package:flutter/material.dart';

import '../models/history.dart';
import '../utility/app_colors.dart';

class HistoryWidget extends StatelessWidget {
  final History history;
  const HistoryWidget({Key? key, required this.history}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [

            CountryWidget(country: history.winner, countryFlag: history.winnerFlag),
            const CircleAvatar(
              radius: 25,
              backgroundColor: AppColors.primaryColor,
              child:  Text('VS', style: TextStyle(color: Colors.white),),
            ),
            CountryWidget(country: history.runnerUp, countryFlag: history.runnerUpFlag),

          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text('Winner', style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
            Text('Runner Up', style: TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(history.winnerScore, style: const TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
            Text(history.runnerUpScore, style: const TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),)
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(history.winnerCaptain, width: 100, height: 150, fit: BoxFit.cover),
            Column(
              children: [
                Text(history.year, style: const TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
                Image.asset('assets/images/trophy.png', width: 70, height: 100,),
                const Text('Hosted By', style:  TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),),
                Text(history.host, style: const TextStyle(color: AppColors.primaryColor, fontWeight: FontWeight.bold),),

              ],
            ),

            Image.asset(history.runnerUpCaptain, width: 100, height: 150, fit: BoxFit.cover),


          ],
        ),

        const SizedBox(height: 30),
      ],
    );
  }
}

class CountryWidget extends StatelessWidget {
  final String country;
  final String countryFlag;

  const CountryWidget({Key? key, required this.country, required this.countryFlag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            colors: [
              AppColors.pinkColor,
              AppColors.lightPurpleColor,
            ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/flags/$countryFlag'),
            ),
            const SizedBox(width: 10,),
            Text(country, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
