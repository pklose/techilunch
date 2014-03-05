library components.leftpanecontainer;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag("left-pane-container")
class LeftPaneContainer extends DivElement with Polymer,Observable {
  
  @published List<Customer> customers = toObservable(new List ());
  
  @published var currentCustomer;
  
  var currentSelected = null;

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
    
    currentCustomer = customers.first;
    
  }
  
  void selectListener (Event e, var detail, Node target) {
    if (currentSelected != null) {
        currentSelected.selected = false;       
    }       
    target.selected = true;
    
    currentCustomer = target.customer;    
    currentSelected = target;
  }
  
  void removeUser (Event e,var detail,Node target) {
    customers.remove(currentSelected.customer);
  }
  
  void addUser (Event e,var detail, Node target){
    currentCustomer = new Customer();
  }
  
  void userAdded (Event e, var detail, Node target) {
    var customer = detail;
    customers.add(customer);
  }
  
}

