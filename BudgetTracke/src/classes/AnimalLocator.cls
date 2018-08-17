public class AnimalLocator {
    
    public static String getAnimalNameById(Integer id){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ id);
        request.setMethod('GET');
        
        HttpResponse response = http.send(request);       
        String animalname = '';
        
           System.debug('******response '+response.getStatusCode());
           System.debug('******response '+response.getBody());

// If the request is successful, parse the JSON response.
    if (response.getStatusCode() == 200) {
    // Deserialize the JSON string into collections of primitive data types.
    Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
    // Cast the values in the 'animals' key as a list
    Map<string,object> animals = (map<string,object>) results.get('animal');
        System.debug('Received the following animals:' + animals );
        animalname = string.valueof(animals.get('name'));
        
        System.debug('animal name >>>>>>' + animalname );
    
    }
        
        if(response.getStatusCode() == 404) {
            
            System.debug('Hmmm issue in response');
        }
        
             
    return animalname;
    }
}

/*
The Apex class must be called 'AnimalLocator', have a 'getAnimalNameById' method that accepts an Integer and returns a String.
The 'getAnimalNameById' method must call https://th-apex-http-callout.herokuapp.com/animals/:id, 
    using the ID passed into the method. The method returns the value of the 'name' property (i.e., the animal name).

Create a test class named AnimalLocatorTest that uses a mock class called AnimalLocatorMock to mock the callout response.

The unit tests must cover all lines of code included in the AnimalLocator class, resulting in 100% code coverage.

Run your test class at least once (via 'Run All' tests the Developer Console) before attempting to verify this challenge.
*/