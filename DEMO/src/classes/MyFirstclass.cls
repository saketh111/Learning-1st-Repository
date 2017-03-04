/*This class will give 20 percent discount on note book
Author : Saketh **/

// This is class name 
Public class MyFirstclass{
//Method for discount
Public static void Addingdiscount(Laptop__c[] laptops){
for (Laptop__c b:laptops){
b.laptop_price__c*=0.8 ;
system.debug(b);
}
}
}