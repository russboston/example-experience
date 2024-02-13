@isTest
public class TestController {

    @isTest
    public static void testController(){
        Contact bob = new Contact(FirstName = 'Bob', LastName = 'Smith', Email = 'bob@example.com');
        insert bob;

        List<Contact> myList = ContactController.getContactList();

        Assert.areEqual(myList[0].Email, 'bob@example.com', 'Expected to return bob@example.com');

    }

}