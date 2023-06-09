

import 'package:appointment_app_v2/model/service_model.dart';
import 'package:appointment_app_v2/model/shop_model.dart';
import 'package:appointment_app_v2/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../utils/constants.dart';

/// Fill Profile
final imagePathProvider = StateProvider<String>((ref) => PROFILE_IMAGE_DIRECTORY);
final firstNameProvider = StateProvider<String>((ref) => '');
final lastNameProvider = StateProvider<String>((ref) => '');
final dateOfBirthProvider = StateProvider<String>((ref) => '');
final emailProvider = StateProvider<String>((ref) => '');
final phoneNumberProvider = StateProvider<String>((ref) => '');

