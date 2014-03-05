library components.userform;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag("user-form")
class UserForm extends PolymerElement {
  
  static const String USER_ADDED = "user-added";
  
  Customer _customer;
  
  @published Customer internalCustomer;
  
  UserForm.created() : super.created() {
     customer = new Customer();
  }
  
  @published set customer (Customer customer) {
    internalCustomer = new Customer.Copy(customer);
    _customer = customer;
  }
  
  @published Customer get customer  => this._customer;
    
  
  
  void save () {
    customer.email = internalCustomer.email;
    customer.name = internalCustomer.name;
    customer.surename = internalCustomer.surename;
    dispatchEvent(new CustomEvent(USER_ADDED, canBubble: true, cancelable: true, detail: customer));
  }  
  
}