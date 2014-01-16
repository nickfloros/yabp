import 'dart:html';
import 'package:polymer/polymer.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('nav-bar')
class NavBar extends PolymerElement {
  @published int count = 0;
 
  List options = toObservable([]);
  
  bool applyAuthorStyles = true;
  NavBar.created() : super.created() {
  }

  void increment() {
    count++;
  }
  
  void enteredView() {
    super.enteredView();
    
  }
  
  void leftView() {
    super.leftView();
  }
  
  void selected() {
    var navBar = shadowRoot.getElementById('navContent');
    navBar.style.height="auto";
    navBar.classes.toggle('collapse');
    navBar.classes.toggle('collapsing');
  }
}

