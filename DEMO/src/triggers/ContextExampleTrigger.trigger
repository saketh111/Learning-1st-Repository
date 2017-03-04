trigger ContextExampleTrigger on Account (before insert, after insert, after delete) {
    if (Trigger.isInsert) {
        if (Trigger.isBefore) {
            for(Account a:Trigger.New){
            if (a.Type == 'Prospect'){
              a.Rating = 'Hot';
              }
             }
        } else if (Trigger.isAfter) {
            List<Contact> saketh = New List<Contact> ();  
            for(Account a:Trigger.New){
            Contact c = New Contact (LastName = a.Name,AccountID = a.ID);
            Saketh.add(c);
        }
         Insert saketh;
        }        
    }
    
}