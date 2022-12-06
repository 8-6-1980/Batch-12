RankHandler rk = new RankHandler();
string price1= rk.rankPrice(1);
system.debug(' price1 is '+ price1);
string price2= rk.rankPrice(3);
system.debug(' price2 is '+ price2);
string price3= rk.rankPrice(8);
system.debug(' price3 is '+ price3);
string price4= rk.rankPrice(12);
system.debug(' price4 is '+ price4);


RankHandler rkw = new RankHandler();
string price5 = rkw.rankPriceSwitch(1);
system.debug(' price5 is '+ price5);
string price6= rkw.rankPriceSwitch(3);
system.debug(' price6 is '+ price6);
string price7= rkw.rankPriceSwitch(8);
system.debug(' price7 is '+ price7);
string price8= rkw.rankPriceSwitch(12);
system.debug(' price8 is '+ price8);
 