library components.userleftpane;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag("user-left-pane")
class LeftPane extends DivElement with Polymer,Observable{
  
  @published Customer customer;
  
  @published var selected = false;
    
  LeftPane.created() : super.created() {
    customer = new Customer.Complete("Philipp",
                                  "Klose",
                                  "fun", 
                                  new Income(100),
                                  new Adress ("Thedor-Heuss-Platz", 86150, "Augsburg"));
  }
  
  void clicked () {
    print("clicked");
  }
  
}