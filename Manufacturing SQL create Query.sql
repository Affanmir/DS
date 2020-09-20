CREATE TABLE Batch (
  idBatch INTEGER  NOT NULL ,
  Start_Date VARCHAR NULL,
  End_Date VARCHAR NULL,
  Items_produced INTEGER  NULL,
  items_rejected INTEGER  NULL,
  PRIMARY KEY(idBatch)
);

CREATE TABLE Machine (
  idMachine INTEGER  NOT NULL ,
  Machine_Manufacutrer VARCHAR NULL,
  Number_of_items_Produed INTEGER  NULL,
  Number_of_items_rejected INTEGER  NULL,
  Country VARCHAR NULL,
  Plant VARCHAR NULL,
  Purchase_Date VARCHAR NULL,
  Machine_Type VARCHAR NULL,
  Operator_ID VARCHAR NULL,
  Raw_Material INT NULL,
  PRIMARY KEY(idMachine)
);

CREATE TABLE Manf_Auto_System (
  idManf_Auto_System INTEGER  NOT NULL,
  Batch_idBatch INTEGER  NOT NULL,
  Time_idTime INTEGER  NOT NULL,
  Product_idProduct VARCHAR NOT NULL,
  Machine_idMachine INTEGER  NOT NULL,
  Total_Number_of_Produced_Items INTEGER  NULL,
  Total_Number_of_Rejected_items INTEGER  NULL,
  PRIMARY KEY(idManf_Auto_System),
  INDEX Manf_Auto_System_FKIndex1(Machine_idMachine),
  INDEX Manf_Auto_System_FKIndex2(Product_idProduct),
  INDEX Manf_Auto_System_FKIndex3(Time_idTime),
  INDEX Manf_Auto_System_FKIndex4(Batch_idBatch)
);

CREATE TABLE Product (
  idProduct VARCHAR NOT NULL ,
  Product_subtype VARCHAR NULL,
  Product_type VARCHAR NULL,
  Raw_material INTEGER  NULL,
  Curring_Time INTEGER  NULL,
  Modling_time INTEGER  NULL,
  Painting_time INTEGER  NULL,
  Paint_type VARCHAR NULL,
  Hardening_time INTEGER  NULL,
  PRIMARY KEY(idProduct)
);

CREATE TABLE Time (
  idTime INTEGER  NOT NULL ,
  Year_2 INTEGER  NULL,
  Month_2 INTEGER  NULL,
  Day_2 INTEGER  NULL,
  Quater VARCHAR NULL,
  PRIMARY KEY(idTime)
);

