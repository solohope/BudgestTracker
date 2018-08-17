@isTest
private class AnimalLocatorTest {
        
     @isTest static void testgetAnimalNameById() {
        
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());     
        String result = '';
        result = AnimalLocator.getAnimalNameById(1);
         
         System.debug(result);

        String expectedResult = 'chicken';

        System.assertEquals(result,expectedResult );

    }
}