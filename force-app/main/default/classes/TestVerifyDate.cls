@isTest
Private class TestVerifyDate{
    Static testMethod void testdate(){
        Date d2 = System.today();
        Date d1 = d2.addDays(10);
        
        // Passing two dates to checkDate function
        // Main class should return end of April
        Date dt = VerifyDate.CheckDates(d1,d2);
        Date testDt = Date.newInstance(2019,4,30);
        System.assertEquals(dt,testDt);   
    }
    
    //calling this function and passing two dates
    @isTest static void VerifyDateWithin30Days(){
        Date d1 = system.today();
        Date d2 = d1.addDays(10);
        
        Date dt = VerifyDate.CheckDates(d1,d2);
        System.assertEquals(dt,d2);
    }
}