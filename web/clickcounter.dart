import 'package:polymer/polymer.dart';
import 'dart:async';

import 'modalloading.dart';
import 'yab_dropdown.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('click-counter')
class ClickCounter extends PolymerElement {
  @published int count = 0;
 
  ModalLoading _modal ;
  YabDropdown _dropDown;
  
  bool applyAuthorStyles = true;
  ClickCounter.created() : super.created() {
  }

  void enteredView(){
    super.enteredView();
    _modal = $['modalLoading'];
    _dropDown= $['yabdropdown'];

    new Timer(new Duration(seconds:5),_load);
  }

  void _load() {
    var options = ['option1.1','opion1.2'];
    
    _dropDown.addOptions(options);
  }
  void increment() {
    count++;
  _modal.show();
  }
}

