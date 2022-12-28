@isTest
public class RankHandlerTest {
    @isTest
    private static void rankPrizeTest() {
        
        RankHandler r = new RankHandler();

        System.assertEquals('Gold', r.rankPrize(1));
        System.assertEquals('Silver', r.rankPrize(2));
        System.assertEquals('Bronze', r.rankPrize(3));
        System.assertEquals('Top 10 certificate', r.rankPrize(4));
        System.assertEquals('Participation certificate', r.rankPrize(11));
        System.assertNotEquals('Gold', r.rankPrize(7));
        System.assertNotEquals('Participation certificate', r.rankPrize(-7));

    }

    @isTest
    private static void rankPrizeSwitchTest() {
        
        RankHandler r = new RankHandler();

        System.assertEquals('Gold', r.rankPrizeSwitch(1));
        System.assertEquals('Silver', r.rankPrizeSwitch(2));
        System.assertEquals('Bronze', r.rankPrizeSwitch(3));
        System.assertEquals('Top 10 certificate', r.rankPrizeSwitch(4));
        System.assertEquals('Participation certificate', r.rankPrizeSwitch(11));
        System.assertNotEquals('Gold', r.rankPrizeSwitch(7));
        System.assertEquals('Participation certificate', r.rankPrizeSwitch(-7));

    }
   
}