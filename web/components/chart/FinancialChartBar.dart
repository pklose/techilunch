library components.chartbar;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag('financial-chart-bar')
class ChartBar extends PolymerElement {
  
  @published FinancialYear financialYear;
  
  @observable var styleObject = {'height' : '80%', 'width' : '90%'};
  
  ChartBar.created() : super.created() {
      
  }
  
  
  
}