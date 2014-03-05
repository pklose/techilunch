library components.userleftpane;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag("user-left-pane")
class LeftPane extends DivElement with Polymer,Observable{
  
  @published Customer customer;
  
  @published bool selected;
    
  LeftPane.created() : super.created() {
    
  }
  
  void clicked () {
    print("clicked");
  }
  
}