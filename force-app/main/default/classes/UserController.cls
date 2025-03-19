public class UserController {
    @AuraEnabled(cacheable = true)
    public static String getCurrentUserName() {
        return [SELECT Name from User where Id = :UserInfo.getUserId() Limit 1 ].Name;
    }

}