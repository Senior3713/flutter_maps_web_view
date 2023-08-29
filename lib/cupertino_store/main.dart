import 'package:flutter/cupertino.dart';
import 'package:flutter_maps/cupertino_store/app.dart';
import 'package:flutter_maps/cupertino_store/models/app_state_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => AppStateModel()..loadProducts(),
      child: const CupertinoStoreApp(),
    ),
  );
}
