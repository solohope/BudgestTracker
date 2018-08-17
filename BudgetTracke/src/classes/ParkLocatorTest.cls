@isTest

public class ParkLocatorTest {
    
    @isTest static void testCallout(){
                // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        
        //call the method that invokes a callout
        List<String> result = new List<String>();
        List<String> countries = new List<String>{'Germany','India','Japan', 'United States'};
            
         result = ParkLocator.country('Germany');
        
        System.assertEquals(countries, result);

        
    }

}