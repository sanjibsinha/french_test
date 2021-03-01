import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/name_change_model.dart';


class SecondRowWidget extends StatelessWidget {
  const SecondRowWidget({
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
                Text('${context.watch<NameChangeModel>().name}'),
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
                  onPressed: () => context.read<NameChangeModel>().changeName(),
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
