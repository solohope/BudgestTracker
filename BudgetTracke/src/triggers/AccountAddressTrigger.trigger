trigger AccountAddressTrigger on Account (before insert, before update) {
    
    //Get the account for the trigger
    List<Account> acctAddressMatch = new List<Account>();
    
    
    for(Account a: Trigger.New){
        // if the checkbox field is true, sets the Shipping Postal Code (whose API name is ShippingPostalCode)
        //  to be the same as the Billing Postal Code (BillingPostalCode).
        
        if(a.lighting_solo__Match_Billing_Address__c==true){
            a.ShippingPostalCode= a.BillingPostalCode;
        }
        
    }

}