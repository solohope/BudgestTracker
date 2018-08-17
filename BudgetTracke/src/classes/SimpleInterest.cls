public class SimpleInterest {
    
    public  static void simpleInteret()
    {
     double principal;
     double interest, rate, t;
     principal = 1000;
     rate = 10.0;
     t=2;
     interest = (principal*rate*t)/100;
     
      Date myDate = Date.today();
      String myString= String.valueof(myDate);
        
      //System.debug ('today's date is ' + myDate);
      System.debug(myString);
        
     System.debug('Simple interest is ' +interest);
        
    }

}