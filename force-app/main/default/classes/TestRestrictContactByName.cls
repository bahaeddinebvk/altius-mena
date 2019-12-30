@isTest
private class TestRestrictContactByName {
   @isTest static void TestDeleteAccountWithOneOpportunity() {
       // Test data setup
       // Create an account with an opportunity, and then try to upsert it
       Contact acct = new Contact(lastName='INVALIDNAME');
       upsert acct;
       Test.startTest();
       Database.UpsertResult result = Database.upsert(acct, false);
       Test.stopTest();
          
   }
       
}