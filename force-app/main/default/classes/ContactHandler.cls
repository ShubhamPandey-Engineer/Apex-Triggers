public with sharing class ContactHandler {

    public static void RestrictLastName(List<Contact> contList) {
   
        for(Contact cont : contList)
        {
        
            //check if last name equals to invalid name
            if(cont.LastName.equals('INVALID NAME'))
            {
                cont.addError('Enter valid name');

            }

        }

    }
}
