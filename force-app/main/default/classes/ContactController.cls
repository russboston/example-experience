public with sharing class ContactController {

    //Comments biz logic note etc etc etc 123
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList() {
        return [
            SELECT Id, Name, Title, Phone, Email
            FROM Contact
            LIMIT 5
        ];
    }
}
