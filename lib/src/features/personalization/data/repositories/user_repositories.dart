// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:torganic/src/features/authentication/data/repositories/auth_repositories.dart';
// import '../../../../utils/exceptions/firebase_auth_exceptions.dart';
// import '../../../../utils/exceptions/firebase_exceptions.dart';
// import '../../../../utils/exceptions/platform_exceptions.dart';
// import '../../model/user_model.dart';
//
// class UserRepositories extends GetxController{
//   static UserRepositories get instance => Get.find();
//
//   final FirebaseFirestore _db = FirebaseFirestore.instance;
//   final authRepository = Get.put(AuthRepositories());
//
//   /// Save user data
//   Future<void> saveUserRecord(UserModel user) async {
//     try{
//       await _db.collection("users").doc(user.id).set(user.toJson());
//     } on FirebaseAuthException catch (e) {
//       throw AppFirebaseAuthException(e.code).message;
//     } on FirebaseException catch (e){
//       throw AppFirebaseException(e.code).message;
//     } on FormatException catch (_){
//       throw const FormatException();
//     } on PlatformException catch (e){
//       throw AppPlatformException(e.code).message;
//     }catch(e){
//       throw 'Something went wrong';
//     }
//   }
//
//   /// Fetch user data
//   Future<UserModel> fetchUserRecord() async {
//     try{
//       final documentSnapshot = await _db.collection("users").doc(authRepository.authUser?.uid).get();
//       if(documentSnapshot.exists){
//         return UserModel.fromSnapshot(documentSnapshot);
//       }else{
//         return UserModel.empty();
//       }
//     } on FirebaseAuthException catch (e) {
//       throw AppFirebaseAuthException(e.code).message;
//     } on FirebaseException catch (e){
//       throw AppFirebaseException(e.code).message;
//     } on FormatException catch (_){
//       throw const FormatException();
//     } on PlatformException catch (e){
//       throw AppPlatformException(e.code).message;
//     }catch(e){
//       throw e.toString();
//     }
//   }
//
//   /// Update user data
//   Future<void> updateUserRecord(UserModel updatedUser) async {
//     try{
//       await _db.collection("users").doc(updatedUser.id).update(updatedUser.toJson());
//     } on FirebaseAuthException catch (e) {
//       throw AppFirebaseAuthException(e.code).message;
//     } on FirebaseException catch (e){
//       throw AppFirebaseException(e.code).message;
//     } on FormatException catch (_){
//       throw const FormatException();
//     } on PlatformException catch (e){
//       throw AppPlatformException(e.code).message;
//     }catch(e){
//       throw 'Something went wrong';
//     }
//   }
//
//   /// Update single field data
//   Future<void> updateUserSingleRecord(Map<String, dynamic>json) async {
//     try{
//       await _db.collection("users").doc(authRepository.authUser?.uid).update(json);
//     } on FirebaseAuthException catch (e) {
//       throw AppFirebaseAuthException(e.code).message;
//     } on FirebaseException catch (e){
//       throw AppFirebaseException(e.code).message;
//     } on FormatException catch (_){
//       throw const FormatException();
//     } on PlatformException catch (e){
//       throw AppPlatformException(e.code).message;
//     }catch(e){
//       throw 'Something went wrong';
//     }
//   }
//
//   /// Remove User Data
//   Future<void> removeUserData(String userId) async {
//     try{
//       await _db.collection("users").doc(userId).delete();
//     } on FirebaseAuthException catch (e) {
//       throw AppFirebaseAuthException(e.code).message;
//     } on FirebaseException catch (e){
//       throw AppFirebaseException(e.code).message;
//     } on FormatException catch (_){
//       throw const FormatException();
//     } on PlatformException catch (e){
//       throw AppPlatformException(e.code).message;
//     }catch(e){
//       throw 'Something went wrong';
//     }
//   }
// }