trigger TriggerStructure on SOBJECT (before insert, before update ,before delete, after insert,after update ) {

    // for after database events
    if(Trigger.isAfter)
    {
        if(Trigger.isInsert)
        {

        }

        else if(Trigger.isUpdate)
        {

        }

        
    }

    // for before database events

    else{

        if(Trigger.isInsert)
        {

        }

        else if(Trigger.isUpdate)
        {
            
        }

        else if(Trigger.isDelete)
        {
            
        }
    }

}