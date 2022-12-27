import 'package:get/get.dart';
import 'package:online_shop_app/models/MakeUpModel.dart';

class CartController extends GetxController {
  RxList<MakeUpModel> item = <MakeUpModel>[].obs;
 
 

  var toatalAmount = 0.0;
  int get itemlength => item.length;
 double get totalPrice => item.fold(0,((previousValue, element) => previousValue +double.parse(element.price!)));
 double get totalMinus => item.fold(0,((previousValue, element) => previousValue -double.parse(element.price!)));

  

  void addToCart(MakeUpModel makeUpModel) {
     print(item.length);
    toatalAmount = totalPrice;
    item.add(makeUpModel);
  

    update();
  }
  void removeCart(MakeUpModel makeUpModel){
    print(item.length);
    toatalAmount = totalMinus;
    item.remove(makeUpModel);
  }

}
