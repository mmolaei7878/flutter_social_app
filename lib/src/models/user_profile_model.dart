import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class Friend with _$Friend {
  factory Friend({
    int? id,
    String? guid,
    String? name,
  }) = _Friend;
  factory Friend.fromJson(Map<String, dynamic> json) => _$FriendFromJson(json);
}

@freezed
class UserProfile with _$UserProfile {
  factory UserProfile({
    String? guid,
    bool? isOwner,
    String? balance,
    String? picture,
    int? age,
    String? eyeColor,
    String? name,
    String? gender,
    String? company,
    String? email,
    String? phone,
    String? address,
    String? about,
    String? registered,
    double? latitude,
    double? longitude,
    List<String>? tags,
    List<Friend>? friends,
    String? greeting,
    String? favoriteFruit,
  }) = _UserProfile;
  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}
