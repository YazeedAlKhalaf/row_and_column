import 'package:flutter/material.dart';

class RowColumnExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> testemonials = <int>[
      1,
      2,
      3,
      4,
      5,
      6,
    ];
    final String description =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sed risus sodales, pulvinar enim ut, mattis dui. Duis consectetur est nec metus gravida tincidunt. Suspendisse ultricies blandit sapien, eu rutrum risus elementum eget. Integer faucibus facilisis dolor quis auctor. Nullam purus velit, venenatis eu efficitur in, dictum et turpis. Proin.";

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Title',
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Theme.of(context).accentColor,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                '⭐⭐⭐⭐⭐',
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                '05xxxxxxxx',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Description: ',
                      style: Theme.of(context).textTheme.headline5.copyWith(
                            color: Theme.of(context).accentColor,
                          ),
                    ),
                    Text(
                      description,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Testemonials: ',
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Theme.of(context).accentColor,
                    ),
              ),
              ...testemonials
                  .map(
                    (int testemonial) => Row(
                      children: <Widget>[
                        Text(
                          testemonial.isEven ? '🤡 ' : '🙈 ',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Expanded(
                          child: Text(
                            testemonial.isEven
                                ? 'Clown said: Best app I have tried ever!'
                                : 'Monkey said: I saw better apps!',
                            style: Theme.of(context).textTheme.subtitle2,
                          ),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
