public with sharing class ContactController {

    //Comments etc etc etc etc
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList() {
        return [
            SELECT Id, Name, Title, Phone, Email
            FROM Contact
            //WITH SECURITY_ENFORCED
<<<<<<< HEAD
            LIMIT 10
=======
            LIMIT 4
>>>>>>> acad38e (info 5)
        ];
    }
}
