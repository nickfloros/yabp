import 'package:polymer/polymer.dart';
import 'modalloading.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('click-counter')
class ClickCounter extends PolymerElement {
  @published int count = 0;
 
  ModalLoading _modal ;
  bool applyAuthorStyles = true;
  ClickCounter.created() : super.created() {
  }

  void enteredView(){
    super.enteredView();
    _modal = $['modalLoading'];
  }
  void increment() {
    count++;
  _modal.show();
  }
}

