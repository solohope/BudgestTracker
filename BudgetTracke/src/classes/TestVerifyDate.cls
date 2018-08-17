@isTest
public class TestVerifyDate {
    @isTest static void testDate1LesserBylessthanThirtyDays(){
        Date date1 = date.newinstance(2017,03,20);
        Date date2 = date.newinstance(2017,04,01);
        
        Date useDate = VerifyDate.CheckDates(date1, date2);
        System.assertEquals(date2,useDate);
    }
    
    
      @isTest static void testDate1LesserByMorethanThirtyDays(){
        Date date1 = date.newinstance(2017,01,31);
        Date date2 = date.newinstance(2017,04,01);
                  
        Date useDate = VerifyDate.CheckDates(date1, date2);
        Date endmonthdate = date.newInstance(2017,01,31);
        System.assertEquals(endmonthdate,useDate);
    }
    
        @isTest static void testDate1greater(){
        Date date1 = date.newinstance(2017,04,30);
        Date date2 = date.newinstance(2017,02,01);
        Date endmonthdate = date.newInstance(2017,04,30);
        Date useDate = VerifyDate.CheckDates(endmonthdate, date2);
 
    }

    
}