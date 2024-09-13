import 'package:get/get.dart';

class TrackController extends GetxController {
    RxList selectedTopics=[].obs;

    void toggleTopic(String topic){
      if (selectedTopics.contains(topic)) {
        selectedTopics.remove(topic);
      }else{
        selectedTopics.add(topic);
      }
    }

    bool isSelected(String topic) {
    return selectedTopics.contains(topic);
  }
  
}