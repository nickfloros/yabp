library modalloading;
import 'dart:html';
import 'package:polymer/polymer.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('modal-loading')
class ModalLoading extends PolymerElement {
 
  bool applyAuthorStyles = true;
  
  @published bool fadeBackdrop=true;
  DivElement _modalBackdrop ;
  
  ModalLoading.created() : super.created() {
    _modalBackdrop = new DivElement();
    _modalBackdrop.classes.addAll(["modal-backdrop","fade","in"]);
  }

  void enteredView() {
    super.enteredView();
  }
  
  void show() {
    $['myModal'].hidden=false;
    $['myModal'].classes.toggle('in');
    $['myModal'].attributes['aria-hidden']='true';
    $['myModal'].style.display='block';
    
    if (fadeBackdrop)
      ownerDocument.documentElement.children.add(_modalBackdrop);
  }
  
  void onClose() {
    _hide();
  }
  
  void onSave() {
    _hide();
  }
  
  void _hide() {
    $['myModal'].classes.toggle('in');
    $['myModal'].attributes['aria-hidden']='false';
    $['myModal'].style.display='none';
    $['myModal'].hidden=true;

    if (fadeBackdrop)
      ownerDocument.documentElement.children.removeLast();
  }
}

