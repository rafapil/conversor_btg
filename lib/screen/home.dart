import 'package:conversor_btg/controller/ApiList.dart';
import 'package:conversor_btg/widget/form_money.dart';
import 'package:conversor_btg/widget/result.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Instance of List API
  ApiList _apiList = ApiList();
  final TextEditingController _editingControllerIN = TextEditingController();
  final TextEditingController _editingControllerOUT = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // launch event for colect country's
    _apiList.ListCountry();
    return Scaffold(
      appBar: AppBar(
        //
        title: Text('Conversor Financeiro'),
        centerTitle: true,
      ),
      body: Container(
        //
        color: Color(0x771C2339),
        padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 80.0),
        child: Center(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(35.0),
            child: Column(
              //
              children: [
                //
                FormMoney(
                  imgBtnMoney: Image.asset('assets/images/btn_origem.png'),
                  txtCurrency: 'USD',
                  textEditingController: _editingControllerIN,
                ),
                SizedBox(height: 20),
                FormMoney(
                  imgBtnMoney: Image.asset('assets/images/btn_nova.png'),
                  txtCurrency: 'USD',
                  textEditingController: _editingControllerOUT,
                ),
                //
                SizedBox(height: 30),
                Result(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
