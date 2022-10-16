import 'package:flutter/material.dart';
import '../models/match.dart';
import '../utility/app_colors.dart';
import '../utility/helper.dart';
class MatchWidget extends StatelessWidget {

  final Match match;
  const MatchWidget({Key? key, required this.match}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.only(bottom: 15),
      child: Stack(
        alignment: Alignment.center,
        children: [

          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                      color: AppColors.lightPurpleColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20))
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [

                          RoundFlag(flag: match.flagOne),
                          const SizedBox(width: 5,),
                          Text(match.teamOne,style: const TextStyle(color: Colors.white),)

                        ],
                      ),

                      const SizedBox(
                          width: 35,
                          height: 20,
                          child:  Center(child: Text('VS', style: const TextStyle(color: Colors.white),))),

                      Row(
                        children: [

                          RoundFlag(flag: match.flagTwo),
                          const SizedBox(width: 5,),
                          Text(match.teamTwo,style: const TextStyle(color: Colors.white),)

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                    decoration: const BoxDecoration(
                        color: AppColors.pinkColor,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(20))
                    ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Helper.getDate(match.date), style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
                      Text(Helper.getGMTTime(match.date), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      Text(Helper.getLocalTime(match.date), style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                      Text(match.venue, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),

                    ],
                  ),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/player_icon.png', width: 50, height: 50,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class RoundFlag extends StatelessWidget {

  final String flag;
  const RoundFlag({Key? key, required this.flag}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2)
      ),
      child: ClipOval(
        child: Image.asset('assets/flags/$flag',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

