public class Collections {
    public static string listAssignment(integer n) {
        List<string> lstMonth = new List<string>{'January','February','March','April','May','June','July',
    'August', 'September','October', 'November','December'};
          string output_Month= '';
          if(n>lstMonth.size()){
            system.debug('Not a valid month');
          }else{
            output_Month = lstMonth[n-1];
            system.debug(output_Month);
          }
          return output_Month;
    }
}
