import 'package:flutter/material.dart';

class FormMoney extends StatelessWidget {
  final Image imgBtnMoney;
  final String txtCurrency;
  final TextEditingController textEditingController;

  const FormMoney(
      {Key key, this.imgBtnMoney, this.txtCurrency, this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.0, bottom: 5.0),
          child: Text(
            'Selecione',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: GestureDetector(
            child: imgBtnMoney,
            onTap: () {},
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text(
                txtCurrency,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: TextFormField(
                  maxLines: 1,
                  maxLength: 10,
                  textAlign: TextAlign.end,
                  keyboardType: TextInputType.number,
                  controller: textEditingController,
                  decoration: InputDecoration(
                    hintText: 'Digite o valor',
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
