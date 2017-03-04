public class accountcontroller {
   
   public List<Account> youlist {get;set;}
   public Contact con {get;set;}
   public accountcontroller(){
       youlist = [select id,Name,AnnualRevenue,Type from Account];
       con = new Contact();
       con.LastName = 'Saketh';
  
   }
}