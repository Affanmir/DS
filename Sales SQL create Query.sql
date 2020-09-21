CREATE TABLE Customer (
  idCustomer INTEGER NOT NULL ,
  Account_Number INTEGER  NULL,
  FirstName VARCHAR(255) NULL,
  MiddlleInitial VARCHAR(255) NULL,
  LastName VARCHAR(255) NULL,
  Addresss VARCHAR(255) NULL,
  City VARCHAR(255) NULL,
  States VARCHAR(255) NULL,
  ZipCode VARCHAR(255) NULL,
  NumberOfCarsOwned INT NULL,
  HomeOwnerFlag VARCHAR(255) NULL,
  Married VARCHAR(255) NULL,
  Num_Children INT NULL,
  PRIMARY KEY(idCustomer)
);

CREATE TABLE Product (
  idProduct INTEGER  NOT NULL,
  ProductType INTEGER  NULL,
  Product_Name VARCHAR(255) NULL,
  Raw_Material VARCHAR(255) NULL,
  Product_Subtype INTEGER  NULL,
  RetailPrice INTEGER  NULL,
  Product_Description VARCHAR(255) NULL,
  Weights INTEGER  NULL,
  ProductID VARCHAR(255) NULL,
  PRIMARY KEY(idProduct)a
);

CREATE TABLE Sales (
  idFact_Table INTEGER  NOT NULL ,
  Customer_idCustomer INTEGER  NOT NULL,
  Product_idProduct INTEGER  NOT NULL,
  Time_idTime INTEGER  NOT NULL,
  Store_idStore INTEGER  NOT NULL,
  Number_of_Sold_Prodcuts INTEGER  NULL,
  Dollar_value INTEGER  NULL,
  promotion INT NULL,
  Salesperson VARCHAR(255) NULL,
  PRIMARY KEY(idFact_Table),
  INDEX Fact_Table_FKIndex1(Store_idStore),
  INDEX Fact_Table_FKIndex2(Time_idTime),
  INDEX Fact_Table_FKIndex4(Product_idProduct),
  INDEX Fact_Table_FKIndex6(Customer_idCustomer)
);

CREATE TABLE Store (
  idStore INTEGER  NOT NULL,
  CountryCOD VARCHAR(255) NULL,
  StoreType VARCHAR(255) NULL,
  UnitSales INT NULL,
  StoreSales INT NULL,
  PRIMARY KEY(idStore)
);

CREATE TABLE Time (
  idTime INTEGER  NOT NULL,
  YEAR_ INT NULL,
  MONTH_ INT NULL,
  DAY_ INT NULL,
  QUARTERZ VARCHAR(255) NULL,
  DayType VARCHAR(255) NULL,
  DOW INT NULL,
  PRIMARY KEY(idTime)
);

