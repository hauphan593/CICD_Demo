@isTest
public class UserControllerTest {
    @isTest
    static void testGetCurrentUserName() {
        // 
        User testUser = new User(
            FirstName = 'hp0207Test',
            LastName = 'Userhp0207',
            Email = 'testuser@example.com',
            Username = 'hp0207testuser@yopmail.com',
            Alias = 'tuser',
            ProfileId = [SELECT Id FROM Profile WHERE Name = 'Standard User' LIMIT 1].Id,
            TimeZoneSidKey = 'America/Los_Angeles',
            LocaleSidKey = 'en_US',
            EmailEncodingKey = 'UTF-8',
            LanguageLocaleKey = 'en_US'
        );
        insert testUser;
        
        Test.startTest();
        System.runAs(testUser) {
            String userName = UserController.getCurrentUserName();
            System.assertEquals('hp0207Test Userhp0207', userName, 'User name should match the test user');
        }
        Test.stopTest();
    }
}