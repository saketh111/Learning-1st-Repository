public class AccSearchSakethCtrl {

    public Integer pho { get; set; }

    public String Billingcod { get; set; }

    public String accSearch {get;set;}
    public List<Account> accList {get;set;}

    public PageReference doSearch() {
        system.debug('####accSearch:'+accSearch);        
        accList = [Select Id,Name,Phone,BillingCountry,Billingcity,Industry,fax,Type From Account Where Name like  :accSearch + '%' ];  
               
        return null;
    }

}