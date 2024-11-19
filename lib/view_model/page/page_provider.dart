import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ontrack/view/onboarding/tabs/connected_app/connected_app.dart';
import 'package:ontrack/view/onboarding/tabs/setup_bio/setup_bio.dart';

class PageProvider extends StateNotifier<int> {
  PageProvider() : super(0);

  void setPage(int index) {
    state = index;
  }
}

class PagesListProvider extends StateNotifier<List<Widget>> {
  PagesListProvider()
      : super([
          SetupBio(),
          ConnectedApp(),
        ]);

  List<Widget> get pages => state;
}
