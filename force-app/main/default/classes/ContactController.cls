public with sharing class ContactController {

    //Comments etc abc 123
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactList() {
        return [
            SELECT Id, Name, Title, Phone, Email
            FROM Contact
            LIMIT 8
        ];
    }
}
