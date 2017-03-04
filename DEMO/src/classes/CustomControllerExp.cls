public class CustomControllerExp {
    public List<Account> accList{get;set;}
    public Contact con {get;set;}
    public CustomControllerExp(){
        accList = [SELECT id,Name,AnnualRevenue,Type FROM Account WHERE AnnualRevenue > 5000 AND Name LIKE 'B%' ];
        con = new Contact();
        con.LastName = 'Saketh';
    }
    
}