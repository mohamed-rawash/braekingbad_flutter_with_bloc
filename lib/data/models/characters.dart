class Character {
  late int charId;
  late String name;
  late String birthday;
  late String nickname;
  late String image;
  late String status;
  late List<dynamic> occupation;
  late List<dynamic> appearance;
  late String actorName;

  Character.fromJason(Map<String, dynamic> json){
    charId = json['char_id'];
    name = json['name'];
    birthday = json['birthday'];
    nickname = json['nickname'];
    image = json['img'];
    status = json['status'];
    occupation = json['occupation'];
    appearance = json['appearance'];
    actorName = json['portrayed'];
  }
}