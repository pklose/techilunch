library components.chart;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:creditdemo/model.dart';

@CustomTag('financial-chart')
class Chart extends DivElement with Polymer, Observable {
  
  @published FinancePlan financialPlan;

  
  Chart.created() : super.created() {
    financialPlan = new FinancePlan();
    financialPlan + new FinancialYear();    
  }
  
  
  
}