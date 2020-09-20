CREATE TABLE Customer (
  idCustomer INTEGER  NOT NULL ,
  Account_Number INTEGER  NULL,
  FirstName VARCHAR NULL,
  MiddlleInitial VARCHAR NULL,
  LastName VARCHAR NULL,
  Addresss VARCHAR NULL,
  City VARCHAR NULL,
  State_ VARCHAR NULL,
  ZipCode VARCHAR NULL,
  NumberOfCarsOwned INT NULL,
  HomeOwnerFlag CHAR NULL,
  Married CHAR NULL,
  Num_Children INT NULL,
  PRIMARY KEY(idCustomer)
);

CREATE TABLE FactTable (
  idFact_Table INTEGER  NOT NULL ,
  Customer_idCustomer INTEGER  NOT NULL,
  Sales_Promotion_idSales_Promotion INTEGER  NOT NULL,
  Product_idProduct INTEGER  NOT NULL,
  Sales_Person_idSales_Person INTEGER NOT NULL,
  Time_idTime INTEGER  NOT NULL,
  Store_idStore INTEGER  NOT NULL,
  Dollar_value INTEGER NULL,
  Number_of_Sold_Prodcuts INTEGER NULL,
  Sales_tax_charged INTEGER  NULL,
  Shipping_charged INTEGER  NULL,
  PRIMARY KEY(idFact_Table),
  INDEX Fact_Table_FKIndex1(Store_idStore),
  INDEX Fact_Table_FKIndex2(Time_idTime),
  INDEX Fact_Table_FKIndex3(Sales_Person_idSales_Person),
  INDEX Fact_Table_FKIndex4(Product_idProduct),
  INDEX Fact_Table_FKIndex5(Sales_Promotion_idSales_Promotion),
  INDEX Fact_Table_FKIndex6(Customer_idCustomer)
);

CREATE TABLE Product (
  idProduct INTEGER  NOT NULL ,
  ProducType INTEGER  NULL,
  Product_Name VARCHAR NULL,
  Raw_Material VARCHAR NULL,
  Product_Subtype INTEGER  NULL,
  RetailPrice INTEGER  NULL,
  Product_Description VARCHAR NULL,
  Weight_ INTEGER  NULL,
  PRIMARY KEY(idProduct)
);

CREATE TABLE Sales_Person (
  idSales_Person INTEGER  NOT NULL ,
  Name_ VARCHAR NULL,
  Sales_Territoary INTEGER  NULL,
  PRIMARY KEY(idSales_Person)
);

CREATE TABLE Sales_Promotion (
  idSales_Promotion INTEGER  NOT NULL ,
  Code INT NULL,
  Name_ VARCHAR NULL,
  PRIMARY KEY(idSales_Promotion)
);

CREATE TABLE Store (
  idStore INTEGER  NOT NULL ,
  CountryCOD VARCHAR NULL,
  StoreType VARCHAR NULL,
  UnitSales INT NULL,
  Store_Sales INTEGER  NULL,
  PRIMARY KEY(idStore)
);

CREATE TABLE Time (
  idTime INTEGER  NOT NULL ,
  YEAR_ INTEGER  NULL,
  MONTH_ INTEGER  NULL,
  DAY_ INTEGER  NULL,
  QUATER INTEGER  NULL,
  PRIMARY KEY(idTime)
);

