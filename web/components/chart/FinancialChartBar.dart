library components.chartbar;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag('financial-chart-bar')
class ChartBar extends DivElement with Polymer, Observable {
  
  @published FinancialYear financialYear;
  
  ChartBar.created() : super.created() {
    
  }
  
  void enteredView () {
    shadowRoot.querySelector("#chart").style.minHeight = "50%";
  }
  
}