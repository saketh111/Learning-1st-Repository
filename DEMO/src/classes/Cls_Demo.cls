public class Cls_Demo {
public boolean bol{get;set;}
public demo__c demo{get;set;}
    public Cls_Demo(ApexPages.StandardController controller) {
        
       bol = false;
    }
     
    public void cusSave(){
    
        bol=true;
    }

}