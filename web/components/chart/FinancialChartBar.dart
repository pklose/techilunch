import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag('financial-chart-bar')
class ChartBar extends PolymerElement {
  
  @published FinancialYear financialYear;
  
  ChartBar.created() : super.created() {
     
  }
  
}