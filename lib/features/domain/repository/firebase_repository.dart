
import 'package:instagram_clone_app/features/domain/entities/user/user_entity.dart';

abstract class FirebaseRepository{
  Future<void> signInUser(UserEntity user);
  Future<void> signUpUser(UserEntity user);
}