import 'package:flutter/material.dart';

import '../models/team.dart';
import '../utility/app_colors.dart';

class TeamWidget extends StatelessWidget {
  final Team team;
  const TeamWidget({Key? key, required this.team}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            AppColors.pinkColor,
            AppColors.lightPurpleColor
          ]
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(team.flag, width: 100, height: 80, fit: BoxFit.cover,)),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(team.fullName, style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  Text(team.captain, style: const TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
                ],
              )
            ],
          ),

          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(team.captainImage),
          )
        ],
      ),
    );
  }
}
