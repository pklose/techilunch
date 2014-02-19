part of model;

@observable class Customer {
  
  String name;
  String surename;
  Adress adress;
  String email;
  Income income;
  
  Customer ();
  Customer.Basic (this.name,this.surename,this.email);
  
  
}

@observable class FinancePlan {
  
  final List<FinancialYear> _financialYears = new List();
  
  
  operator + (FinancialYear year) {
    this._financialYears.add(year);
    year.plan = this;
  }
  
  operator - (FinancialYear year) {
    this._financialYears.remove(year);
    year.plan = null;
  }
  
  
  
}

@observable class FinancialYear {
  
  num currentBalance;
  List<Asset> assetsBroughtThisYear = new List();
  FinancePlan plan;
  
}

@observable class Asset {
  String name;
}

class Income {
  final num perYearSalary;
  
  const Income (this.perYearSalary);
  
  num getSalaryPerMonth (){
    return perYearSalary / 12;
  }
  
}

class Adress {
  
}