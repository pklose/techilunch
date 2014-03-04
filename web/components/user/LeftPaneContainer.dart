library components.leftpanecontainer;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag("left-pane-container")
class LeftPaneContainer extends PolymerElement {
  
  @published List<Customer> customers = new List ();
  
  
    
  LeftPaneContainer.created() : super.created() {
    customers.add(new Customer.Complete("Philipp",
                                  "Klose",
                                  "fun", 
                                  new Income(100),
                                  new Adress ("Thedor-Heuss-Platz", 86150, "Augsburg")));
    
    customers.add(new Customer.Complete("Philipp2",
                                      "Klose",
                                      "fun", 
                                      new Income(100),
                                      new Adress ("Thedor-Heuss-Platz", 86150, "Augsburg")));
  }
  
}