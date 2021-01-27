import 'package:conversor_btg/model/ListData.dart';
// import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

const URLBASE = 'http://api.currencylayer.com';

class ApiList {
//
  Future<Map<dynamic, ListData>> ListCountry() async {
    //
    await DotEnv.load(fileName: ".env");
    http.Response response =
        await http.get(URLBASE + "/list?access_key=" + env['API_KEY']);

    // Shared preference config to save currencies data in device
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var dataJson = json.decode(response.body);

    if (prefs.getString('shaPrefCurrencies') != null) {
      // String dataPref = jsonEncode(dataJson["currencies"]);
      String dataPref = jsonEncode(dataJson);

      await prefs.setString('shaPrefCurrencies', dataPref);

      // var sharedData = prefs.getString('shaPrefCurrencies');
    }

    try {
      //
      // List<ListData> country = List();
      var sharedData = json.decode(prefs.getString('shaPrefCurrencies'));

      // List outra = List();
      print(sharedData['currencies']);

      // for (var data in outra) { 1
      //   print('tem dado');
      // }

      // for(var data in json.decode(sharedData)){
      //   ListData x = ListData(data[])
      // }

      //
    } catch (e) {
      print('VOCE TA POBRE');
    }
  }
}
