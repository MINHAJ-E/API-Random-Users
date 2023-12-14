class Model{
  String gender;
  String email;
  
  Model({required this.gender,required this.email});

  factory Model.fromJson(Map<String,dynamic>json){
    return Model(
      gender: json['gender'],
      email: json['email']);
  }
}