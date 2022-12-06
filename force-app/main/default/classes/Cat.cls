public class Cat {
    public string name;
    public string color;
    public static integer countCat = 0;
    // what is name of constructor? Same as class name: Cat
    // what is return type of constructor? not even void. It does not return anything.
    public Cat() {
        system.debug(' cat constructor called');
        countCat++;
    }
     public Cat( string n ,string clr){
        name = n;
        color = clr;
        countCat++;
        sleeping();
        
     }
     public void sleeping(){
     system.debug( name+ ' is sleeping');
     }
     
}
