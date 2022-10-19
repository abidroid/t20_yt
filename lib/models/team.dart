class Team {
  late String fullName;
  late String shortName;
  late String captain;
  late String flag;
  late String captainImage;

  Team({
    required this.fullName,
    required this.shortName,
    required this.captain,
    required this.flag,
    required this.captainImage,
  });

  // Json to Dart object

  factory Team.fromJSON(Map<String, dynamic> map) {
    return Team(
      fullName: map['fullName'],
      shortName: map['shortName'],
      captain: map['captain'],
      flag: map['flag'],
      captainImage: map['captainImage'],
    );
  }
}
