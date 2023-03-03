// Creating a class for modelling data of type User.
class User {
  late int id;
  late String name;
  late String age;

  User(this.id, this.name, this.age);
  @override
  String toString() {
    return 'User{id:$id,name:$name,age:$age}';
  }
}
