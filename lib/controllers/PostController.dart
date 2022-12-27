import 'package:get/get.dart';
import 'package:online_shop_app/apiService.dart';

import '../models/MakeUpModel.dart';

class PostController extends GetxController {
  final MakeupApiService _makeupApiService = Get.put(MakeupApiService());
  Rx<MakeupState> makeupState = MakeupState().obs;
 


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getAllPost();
  }




  void getAllPost() {
 makeupState.value = MakeupLoading();
 _makeupApiService.getAllPost().then((makeuplist) {

      return makeupState.value = MakeupSuccess(makeuplist);

    })
    .catchError((e) {
      makeupState.value = MakeupFail(e.toString());
    });
  }
  
}

class MakeupState {}

class MakeupLoading extends MakeupState {}

class MakeupSuccess extends MakeupState {
  final List<MakeUpModel> makeUpModel;

  MakeupSuccess(this.makeUpModel);
}

class MakeupFail extends MakeupState {
   final String error;

  MakeupFail(this.error);
}

