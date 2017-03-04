/* This is test class for MyFirstClass */

@isTest
Private class MyFirstTestclass {
Static testmethod void ValidateMyFirst(){
Laptop__c Laptop = new Laptop__c (Name='ASUS',laptop_price__c=500);
System.debug('laptop price of the ASUS before insert'+Laptop.laptop_price__c);
//Inserting the record
insert Laptop ;
// Getting back the new ASUS laptop
Laptop =[select laptop_price__c from Laptop__c where id=:Laptop.ID];
system.debug('Price of the ASUS laptop after trigger fired '+Laptop.laptop_price__c);
// Making sure that trigger properly updated price
system.assertEquals(400,Laptop.laptop_price__c);
}
}