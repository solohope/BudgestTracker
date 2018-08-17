@RestResource(urlMapping ='/Accounts/*/contacts')

global with sharing class AccountManager {

    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
		system.debug(accountId);
        Account result =  [SELECT Name, Id, (SELECT Name, Id FROM Contacts)
                         FROM Account
                        WHERE Id = :accountId LIMIT 1];
        return result;
    }
}