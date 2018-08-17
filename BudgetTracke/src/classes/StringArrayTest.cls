public class StringArrayTest {
    
    //The Apex class must have a public static method called 'generateStringArray'.
    //The 'generateStringArray' method must return an array (or list) of strings. 
    //Each string must have a value in the format 'Test n' where n is the index of the current string in the array. 
    //The number of returned strings is specified by the integer parameter to the 'generateStringArray' method.
    
    public static List<String> generateStringArray(Integer n ){
        
        List<String> temp = new List<String>();
        
        for(Integer x = 0; x < n; x++){
            String element = 'Test ';
            
            temp.add(element + x);
            System.debug(temp[x]);
                                          
        }
        
        return temp;
        
    }

}