import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/number_model.dart';


class FirstRowWidget extends StatelessWidget {
  const FirstRowWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text('You have pushed this button this time!'),

                /// this is our one [NumberModel] listener
                /// watch() will reflect the change in number
                /// as one presses the button
                ///
                Text('${context.watch<NumberModel>().counter}'),
                /**
                 * ElevatedButton(
                    /// this is our another [NumberModel] listener
                    /// read() will fire the event the changes the number
                    /// by adding 2
                    ///
                    onPressed: () =>
                    context.read<NumberModel>().incrementNumberByTwo(),
                    child: Text('Increment'),
                    ),
                 */
                FloatingActionButton(
                  onPressed: () => context.read<NumberModel>().incrementNumberByTwo(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ), // Th
              ],
            ),
          ),
        ),
      ],
    );
  }
}
