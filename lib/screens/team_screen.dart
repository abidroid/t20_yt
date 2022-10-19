import 'package:flutter/material.dart';

import '../models/team.dart';
import '../utility/data_api.dart';
import '../widgets/background_widget.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/team_widget.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(titleText: 'Teams'),
      body: BackgroundWidget(
        padding: const EdgeInsets.all(10),
        child: FutureBuilder<List<Team>>(
          future: DataApi.getAllTeams(context),
          builder: (BuildContext context, AsyncSnapshot snapshot){

            if( snapshot.hasData){

              List<Team> teams = snapshot.data;

              return ListView.builder(
                  itemCount: teams.length,
                  itemBuilder: (context, index){

                    return TeamWidget(team: teams[index]);

              });
            }else{
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
