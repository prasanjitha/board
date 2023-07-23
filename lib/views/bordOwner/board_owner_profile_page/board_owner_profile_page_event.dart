import 'package:flutter/foundation.dart';

@immutable
abstract class BWProfilePageEvent {}

class UploadImageEvent extends BWProfilePageEvent {}

class InitEvent extends BWProfilePageEvent {}

class UpdateUserDataEvent extends BWProfilePageEvent {
  final String firstName;
  final String lastName;
  final String city;
  UpdateUserDataEvent(
      {required this.firstName, required this.city, required this.lastName});
}
