import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag('financial-chart-bar')
class ChartBar extends PolymerElement {
  
  @published FinancialYear financialYear;
  
  @published num height = 100;
  
  @published num width = 100;
  
  ChartBar.created() : super.created() {
     
  }
  
}