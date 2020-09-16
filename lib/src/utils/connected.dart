import 'dart:async'; //Nativo del SDK

//bibliotecas de terceros
import 'package:connectivity/connectivity.dart';

//Bibliotecas propias

class Connected {
  Future<bool> isConnected() async {
    var connectivityResult = await (Connectivity().checkConnectivity());

    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      return true;
    }

    return false;
  }
}
