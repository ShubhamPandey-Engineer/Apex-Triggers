trigger Question1 on Contact (before insert , before update) {

    
    // for after database events
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {
ContactHandler.RestrictLastName(Trigger.New);
        }

        else if(Trigger.isUpdate)
        {
            ContactHandler.RestrictLastName(Trigger.New);

        }

        
    }

 
    

}