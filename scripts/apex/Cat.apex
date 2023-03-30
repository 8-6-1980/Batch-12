Cat sfCat =new Cat();
sfCat.name = ' Ginger';
sfCat.color = ' Oronge';
system.debug( 'sf cat ' + sfCat);

cat falconsCat = new Cat('fluffykins','white');
system.debug('Btach 12 cat is '+ falconsCat );

Cat cat2 = new Cat ('simba' ,'brown');
system.debug(' cat 2 '+ cat2);
 
 cat batch12Cat3 = new cat('black pepper' ,'black');
 system.debug( 'batch 12 cat '+ batch12Cat3)

system.debug('number of cats=>'+ Cat.countCat);

List <Opportunity> opportunitiesToDelete = [SELECT Id FROM Opportunity WHERE Name= 'Big 5M Opp'];
delete opportunitiesToDelete;