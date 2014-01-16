library modalloading;
import 'package:polymer/polymer.dart';

/**
 * A Polymer click counter element.
 */
@CustomTag('modal-loading')
class ModalLoading extends PolymerElement {
 
  bool applyAuthorStyles = true;
  ModalLoading.created() : super.created() {
  }

  void show() {
    $['myModal'].hidden=false;
    $['myModal'].classes.toggle('in');
    $['myModal'].attributes['aria-hidden']='true';
    $['myModal'].style.display='block';
  }
  
  void onClose() {
    $['myModal'].classes.toggle('in');
    $['myModal'].attributes['aria-hidden']='true';
    $['myModal'].style.display='none';
    $['myModal'].hidden=true;
  }
  
  void onSave() {
    $['myModal'].classes.toggle('in');
    $['myModal'].attributes['aria-hidden']='false';
    $['myModal'].style.display='none';
    $['myModal'].hidden=true;
  }
}

