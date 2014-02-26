library components.userform;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag("user-form")
class UserForm extends PolymerElement {
  
  @published Customer customer;
  
  UserForm.created() : super.created() {
    customer = new Customer.Basic("hallo","hallo","hallo");
  }
  
}