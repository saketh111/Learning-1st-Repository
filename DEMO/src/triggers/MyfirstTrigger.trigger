/**This trigger fires MyFirstclass to get the propper discount
Author:Saketh
Copyrights:Avco Tech**/

trigger MyfirstTrigger on Laptop__c(before insert){
Laptop__c[] Laptops= Trigger.new;
MyFirstclass.Addingdiscount (laptops);

}