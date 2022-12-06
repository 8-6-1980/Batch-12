public class Candidates {
   public string name;
   public string gender;
   public static string companyName;
   public static integer countCandidates = 0;

   public void printCandidates(){
     system.debug('Name of candidates is '+ name + ', gender is '+ gender);
     system.debug('company name is ' +companyName);
   }
    public static void printCandidateInfo(){
        // we can acsess static member in satic method
        system.debug('caompany name is ' + companyName);
        //  we cannot acsess non static members in static method
        // system.debug(' name is '+ name); bunu yapamayiz.
    }
}
