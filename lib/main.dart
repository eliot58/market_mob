import 'package:flutter/material.dart';
import 'package:market_mob/presentation/auth.dart';
import 'package:market_mob/presentation/become.dart';
import 'package:market_mob/presentation/news.dart';
import 'package:market_mob/presentation/providers.dart';

void main() {
  runApp(const MaterialApp(
      home: ProvidersPage(),
      debugShowCheckedModeBanner: false
    )
  );
}