import 'package:flutter/material.dart';
import 'provider-test/view/provider_test_app.dart';
import 'package:provider/provider.dart';

import 'model/number_model.dart';
import 'model/name_change_model.dart';
import 'model/name_clear_model.dart';
import 'view/french_test.dart';
import 'provider-test/model/first_model_class.dart';
import 'provider-test/model/second_model_class.dart';

void main() {
  runApp(
    /// Providers are above [FrenchTestApp] instead of inside it
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => NumberModel()),
        ChangeNotifierProvider(create: (_) => NameChangeModel()),
        ChangeNotifierProvider(create: (_) => NameClearModel()),
        ChangeNotifierProvider(
            create: (_) => FirstModelClass(value: 'First Model Class')),
        ChangeNotifierProvider(
            create: (_) => SecondModelClass(
                firstModelClass: FirstModelClass(value: 'Second Model Class'))),
      ],
      // child: FrenchTestApp(),
      child: ProviderTestApp(),
    ),
  );
}
