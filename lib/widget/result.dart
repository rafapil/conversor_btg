import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String locationMoney;
  final String valueResult;

  const Result({Key key, this.locationMoney = 'USD', this.valueResult = '0.00'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Valor convertido: ',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${locationMoney} ${valueResult}',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
