@isTest
public class TemperatureConverterTest {
    
    @isTest static void testWarmTemp(){
        Decimal rs = TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11, rs);
    }
    @isTest static void testFreezingPoint(){
        Decimal rs = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0, rs);
    }
    @isTest static void testBoilingPoint(){
        Decimal rs = TemperatureConverter.FahrenheitToCelsius(212);
        System.assertEquals(100, rs,'Boiling point not expected.');
    }
    @isTest static void testNegativeTemp(){
        Decimal rs = TemperatureConverter.FahrenheitToCelsius(-10);
        System.assertEquals(-23.33, rs);
    }
    
    
    

}