public class RandomContactFactory {
	 public static List<Contact> generateRandomContacts(Integer numCon, String FName) {
        List<Contact> contactList = new List<Contact>();
      for(Integer i=0;i<numCon;i++)
      {
          Contact c = new Contact(FirstName=FName + ' ' + i, LastName = 'Contact '+i);
                      contactList.add(c);
            System.debug(c);

      }
                 System.debug(contactList.size());

         return contactList;
        
    }
}