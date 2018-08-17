public class ParkLocator {
    
    public static String[] country(String country){
               
        ParkService.ParksImplPort parklocator = new ParkService.ParksImplPort();
        
        return parklocator.byCountry(country);
        
        
    }

}