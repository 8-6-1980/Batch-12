public  class StaticNonStaticAssignment {
    public integer x;
    public integer y;
    public StaticNonStaticAssignment(integer x, integer y) {
        this.x = x;
        this.y =y;
       integer sum = x+y;
       system.debug(sum);
    }
     public static void addititon( integer a, integer b){
       integer total = a+b;
        system.debug( total);
     }
      public integer addition2( integer c, integer d){
        integer sum = c+d;
        return sum;
      }
}
