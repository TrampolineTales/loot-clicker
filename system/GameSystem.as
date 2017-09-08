package gl.system
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.net.SharedObject;
   import gl.data.units.enemies.Demon;
   
   public class GameSystem extends Sprite
   {
      
      public static var sta:DisplayObjectContainer;
      
      public static var saveData:SharedObject;
      
      public static var titleScreen:Boolean = true;
      
      public static var killsMenu:Boolean = true;
      
      public static var shopMenu:Boolean = false;
      
      public static var lootMenu:Boolean = false;
      
      public static var statsMenu:Boolean = false;
      
      public static var achievementsMenu:Boolean = false;
      
      public static var date:Date = new Date();
       
      
      public function GameSystem()
      {
         super();
      }
      
      public static function LoadData() : void
      {
         saveData = SharedObject.getLocal("ttGuildLeaderData");
         if(!saveData.data.sfxOn)
         {
            saveData.data.sfxOn = true;
         }
         if(!saveData.data.musicOn)
         {
            saveData.data.musicOn = true;
         }
         if(!saveData.data.fpsCounter)
         {
            saveData.data.fpsCounter = true;
         }
         if(!saveData.data.memoryUsed)
         {
            saveData.data.memoryUsed = false;
         }
         if(!saveData.data.warriors)
         {
            saveData.data.warriors = new Array();
         }
         if(!saveData.data.mages)
         {
            saveData.data.mages = new Array();
         }
         if(!saveData.data.grunts)
         {
            saveData.data.grunts = new Array();
         }
         if(!saveData.data.assassins)
         {
            saveData.data.assassins = new Array();
         }
         if(!saveData.data.knights)
         {
            saveData.data.knights = new Array();
         }
         if(!saveData.data.undead)
         {
            saveData.data.undead = new Array();
         }
         if(!saveData.data.cultists)
         {
            saveData.data.cultists = new Array();
         }
         if(!saveData.data.elders)
         {
            saveData.data.elders = new Array();
         }
         if(!saveData.data.secondsPlayed)
         {
            saveData.data.secondsPlayed = 0;
         }
         if(!saveData.data.clicks)
         {
            saveData.data.clicks = 0;
         }
         if(!saveData.data.goldFromFarming)
         {
            saveData.data.goldFromFarming = 0;
         }
         if(!saveData.data.lifetimeGold)
         {
            saveData.data.lifetimeGold = 0;
         }
         if(!saveData.data.totalDPS)
         {
            saveData.data.totalDPS = 0;
         }
         if(!saveData.data.lootFound)
         {
            saveData.data.lootFound = 0;
         }
         if(!saveData.data.lootSold)
         {
            saveData.data.lootSold = 0;
         }
         if(!saveData.data.achievements)
         {
            saveData.data.achievements = 0;
         }
         if(!saveData.data.potionsUsed)
         {
            saveData.data.potionsUsed = 0;
         }
         if(!saveData.data.spellsUsed)
         {
            saveData.data.spellsUsed = 0;
         }
         if(!saveData.data.gold)
         {
            saveData.data.gold = 0;
         }
         if(!saveData.data.totalWarriorGold)
         {
            saveData.data.totalWarriorGold = 0;
         }
         if(!saveData.data.totalMageGold)
         {
            saveData.data.totalMageGold = 0;
         }
         if(!saveData.data.totalGruntGold)
         {
            saveData.data.totalGruntGold = 0;
         }
         if(!saveData.data.totalAssassinGold)
         {
            saveData.data.totalAssassinGold = 0;
         }
         if(!saveData.data.totalKnightGold)
         {
            saveData.data.totalKnightGold = 0;
         }
         if(!saveData.data.totalUndeadGold)
         {
            saveData.data.totalUndeadGold = 0;
         }
         if(!saveData.data.totalCultistGold)
         {
            saveData.data.totalCultistGold = 0;
         }
         if(!saveData.data.totalElderGold)
         {
            saveData.data.totalElderGold = 0;
         }
         if(!saveData.data.goToBed)
         {
            saveData.data.goToBed = false;
         }
         if(!saveData.data.idler)
         {
            saveData.data.idler = false;
         }
         if(!saveData.data.loot)
         {
            saveData.data.loot = new Array();
         }
         if(!saveData.data.tenK)
         {
            saveData.data.tenK = false;
         }
         if(!saveData.data.clickTimer)
         {
            saveData.data.clickTimer = 0;
         }
         if(!saveData.data.visitDevWebsite)
         {
            saveData.data.visitDevWebsite = false;
         }
         if(!saveData.data.visitArtistWebsite)
         {
            saveData.data.visitArtistWebsite = false;
         }
         if(!saveData.data.level60Character)
         {
            saveData.data.level60Character = false;
         }
         if(!saveData.data.demonslayer)
         {
            saveData.data.demonslayer = false;
         }
         if(!saveData.data.demon)
         {
            saveData.data.demon = new Demon();
         }
         if(!saveData.data.ratsKilled)
         {
            saveData.data.ratsKilled = 0;
         }
         if(!saveData.data.crabsKilled)
         {
            saveData.data.crabsKilled = 0;
         }
         if(!saveData.data.batsKilled)
         {
            saveData.data.batsKilled = 0;
         }
         if(!saveData.data.catsKilled)
         {
            saveData.data.catsKilled = 0;
         }
         if(!saveData.data.sharksKilled)
         {
            saveData.data.sharksKilled = 0;
         }
         if(!saveData.data.squidsKilled)
         {
            saveData.data.squidsKilled = 0;
         }
         if(!saveData.data.frogsKilled)
         {
            saveData.data.frogsKilled = 0;
         }
         if(!saveData.data.insectsKilled)
         {
            saveData.data.insectsKilled = 0;
         }
         if(!saveData.data.lizardsKilled)
         {
            saveData.data.lizardsKilled = 0;
         }
         if(!saveData.data.camelsKilled)
         {
            saveData.data.camelsKilled = 0;
         }
         if(!saveData.data.ghostsKilled)
         {
            saveData.data.ghostsKilled = 0;
         }
         if(!saveData.data.spiritsKilled)
         {
            saveData.data.spiritsKilled = 0;
         }
         if(!saveData.data.enemyHPResearchItem)
         {
            saveData.data.enemyHPResearchItem = false;
         }
         if(!saveData.data.enemyGoldResearchItem)
         {
            saveData.data.enemyGoldResearchItem = false;
         }
         if(!saveData.data.enemyLootResearchItem)
         {
            saveData.data.enemyLootResearchItem = false;
         }
         if(!saveData.data.warriorMouse)
         {
            saveData.data.warriorMouse = false;
         }
         if(!saveData.data.mageMouse)
         {
            saveData.data.mageMouse = false;
         }
         if(!saveData.data.gruntMouse)
         {
            saveData.data.gruntMouse = false;
         }
         if(!saveData.data.assassinMouse)
         {
            saveData.data.assassinMouse = false;
         }
         if(!saveData.data.knightMouse)
         {
            saveData.data.knightMouse = false;
         }
         if(!saveData.data.undeadMouse)
         {
            saveData.data.undeadMouse = false;
         }
         if(!saveData.data.cultistMouse)
         {
            saveData.data.cultistMouse = false;
         }
         if(!saveData.data.elderMouse)
         {
            saveData.data.elderMouse = false;
         }
         if(!saveData.data.mouseDoubler)
         {
            saveData.data.mouseDoubler = false;
         }
         if(!saveData.data.mapToHell)
         {
            saveData.data.mapToHell = false;
         }
         if(!saveData.data.warriorMouse2)
         {
            saveData.data.warriorMouse2 = false;
         }
         if(!saveData.data.mageMouse2)
         {
            saveData.data.mageMouse2 = false;
         }
         if(!saveData.data.gruntMouse2)
         {
            saveData.data.gruntMouse2 = false;
         }
         if(!saveData.data.assassinMouse2)
         {
            saveData.data.assassinMouse2 = false;
         }
         if(!saveData.data.knightMouse2)
         {
            saveData.data.knightMouse2 = false;
         }
         if(!saveData.data.undeadMouse2)
         {
            saveData.data.undeadMouse2 = false;
         }
         if(!saveData.data.cultistMouse2)
         {
            saveData.data.cultistMouse2 = false;
         }
         if(!saveData.data.elderMouse2)
         {
            saveData.data.elderMouse2 = false;
         }
         if(!saveData.data.valueIncreaser)
         {
            saveData.data.valueIncreaser = false;
         }
         if(!saveData.data.lootFinder)
         {
            saveData.data.lootFinder = false;
         }
         saveData.flush();
      }
      
      public static function GetStage(param1:DisplayObjectContainer) : void
      {
         sta = param1;
      }
   }
}
