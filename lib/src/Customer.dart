part of model;

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
  
  List<FinancialYear> get financialYears {
    return this._financialYears;
  }
  
}

@observable class Customer {
  
  String name;
  String surename;
  Adress adress;
  String email;
  Income income;
  
  Customer ();
  Customer.Basic (this.name,this.surename,this.email);
  Customer.Complete(this.name,this.surename,this.email,this.income,this.adress);
  Customer.Copy(Customer customer) {
    name = customer.name;
    surename = customer.surename;
    adress = customer.adress;
    email = customer.email;
    income = customer.income;
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

@published class Adress {
  String street;
  int postal;
  String city;
  
  Adress (this.street, this.postal, this.city);
}