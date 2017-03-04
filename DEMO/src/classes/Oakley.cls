public class Oakley {
public contact phone{get;set;}
public Account Tommy{get;set;}
Public Opportunity Swiss{get;set;}
public string accid{get;set;}

    public Oakley(ApexPages.StandardController controller) {
    
    //phone = (contact) controller.getrecord();
    tommy = new account();
    phone = new contact();
    Swiss = new Opportunity ();
    
    
    If (Phone.ID !=null)
    
    phone = [select AccountID,FirstName,LastName from contact where ID = :phone.ID];
    If (phone.AccountID !=null)
      Tommy = [select Name,Type,BillingCountry,BillingCity from Account where ID = :Phone.AccountID];
    }
    
    public void fectchAcc(){
    system.debug('@@@@@@@@@@ '+' '+Phone.AccountID);
         Tommy = [select Name,Type,BillingCountry,BillingCity from Account where id= :Phone.AccountID];
         
    }
    
    public pageReference MyCustomSave(){
        if(phone.Accountid!=null){
            insert phone;
            if(Swiss.AccountId !=null){
            insert swiss;
            }
        }else{
            insert Tommy;
            phone.accountid = tommy.id;
            swiss.AccountID = tommy.id;
            insert phone;
            insert swiss;
        }
        
        pageReference pg = new pageReference('/'+phone.id);
        pg.setRedirect(true);
        return pg;
    }

}