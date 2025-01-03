class UserEntity {
  UserEntity({
    required String id,
    required String name,
    required String email,
    required String imageURL,
  })  : _id = id,
        _name = name,
        _email = email,
        _imageURL = imageURL;

  final String _id;
  final String _name;
  final String _email;
  final String _imageURL;

  String get id => _id;
  String get name => _name;
  String get email => _email;
  String get imageURL => _imageURL;
}
