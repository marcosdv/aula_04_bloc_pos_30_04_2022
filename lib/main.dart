import 'dart:io';

import 'package:aula_04_bloc_pos/android/app_android.dart';
import 'package:aula_04_bloc_pos/ios/app_ios.dart';
import 'package:flutter/material.dart';

void main() => runApp(Platform.isAndroid ? const AppAndroid() : const IosApp());