trigger ContactTrigger on Contact (before insert ,before update ,after insert , after update , after delete) 
{
    
    // before events
    if(Trigger.isBefore)
    {
     if(Trigger.isInsert)
     {//
       ContactHandler.RestrictLastName(Trigger.New);
     }
        
        else if(Trigger.isUpdate)
        {
            ContactHandler.updatePhone(Trigger.New,Trigger.OldMap);
        }
    }
    // after events
    else
    {
      // after insert
      if(Trigger.isInsert)
      {
          //update account's contactNumber count
         // ContactHandler.CountContacts(Trigger.New);
      }
        
       // after update
       else if(Trigger.isUpdate)
       {
          //update account's contactNumber count
       //   ContactHandler.countContacts(Trigger.new);
       }
        
        // after delete
         else if(Trigger.isDelete)
         {
               //update account's contactNumber count
              // ContactHandler.CountContacts(Trigger.old);
         }
        
    }

}