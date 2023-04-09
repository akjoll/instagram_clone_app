import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final String? uid;
  final String? username;
  final String? name;
  final String? website;
  final String? bio;
  final String? email;
  final String? profileUrl;
  final List? followers;
  final List? following;
  final num? totalFollowers;
  final num? totalFollowing;

  final String? password;
  final String? otherUid;

  UserEntity({
      this.uid,
      this.username,
      this.name,
      this.website,
      this.bio,
      this.email,
      this.profileUrl,
      this.followers,
      this.following,
      this.totalFollowers,
      this.totalFollowing,
      this.password,
      this.otherUid
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    uid,
    username,
    name,
    website,
    bio,
    email,
    profileUrl,
    followers,
    following,
    totalFollowers,
    totalFollowing,
    password,
    otherUid
  ];

}
