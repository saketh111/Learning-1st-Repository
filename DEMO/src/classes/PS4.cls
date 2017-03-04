public class PS4{

public string selectedcountry{get;set;}
public string mytext{get;set;}

    public ps4(){
    selectedcountry = 'In';
    mytext = '';
        
        }
    public void providtextboxvalue(){
    mytext = selectedcountry;
    }
      
}