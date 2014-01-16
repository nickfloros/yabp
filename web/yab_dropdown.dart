library yabdropdown;

import 'package:polymer/polymer.dart';
import 'dart:html';


/**
 * A Polymer click counter element.
 */
@CustomTag('yab-dropdown')
class YabDropdown extends PolymerElement {
  @published int count = 0;
 
  @published 
  List options = toObservable([]);
  
  Element _rootDiv;
  
  bool applyAuthorStyles = true;
  YabDropdown.created() : super.created() {
    options.add('option 1');
    options.add('option 2');
  }

  void enteredView(){
    super.enteredView();
    _rootDiv = shadowRoot.querySelector('.btn-group');
    
  }
  
  void addOptions(List optionItems) {
    options.addAll(optionItems);
  }
  
  void onDropdownSelected() {
    _toggleDropdown();
  }

  void _toggleDropdown(){
    _rootDiv.classes.toggle('open');
  }
  

  void onOptionSelected(Event e, var detail, Element target) {
    var idStr = target.getAttribute('data-value');
    if (idStr!=null) {
      _toggleDropdown();
      print('option selected $idStr');
//      this.fire(selectionEventName,detail:int.parse(idStr));
    }
  }
}

