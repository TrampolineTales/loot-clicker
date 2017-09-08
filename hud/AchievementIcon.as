package gl.hud
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import gl.system.GameSystem;
   
   public class AchievementIcon
   {
       
      
      private var iconClass:Class;
      
      private var goldClass:Class;
      
      private var unlockedGoldClass:Class;
      
      private var farmerClass:Class;
      
      private var unlockedFarmerClass:Class;
      
      private var lootClass:Class;
      
      private var unlockedLootClass:Class;
      
      private var merchantClass:Class;
      
      private var unlockedMerchantClass:Class;
      
      private var mouseClass:Class;
      
      private var unlockedMouseClass:Class;
      
      private var loveClass:Class;
      
      private var unlockedLoveClass:Class;
      
      private var clockClass:Class;
      
      private var unlockedClockClass:Class;
      
      private var pestClass:Class;
      
      private var unlockedPestClass:Class;
      
      private var levelClass:Class;
      
      private var unlockedLevelClass:Class;
      
      private var dpsClass:Class;
      
      private var unlockedDPSClass:Class;
      
      private var warriorClass:Class;
      
      private var unlockedWarriorClass:Class;
      
      private var mageClass:Class;
      
      private var unlockedMageClass:Class;
      
      private var gruntClass:Class;
      
      private var unlockedGruntClass:Class;
      
      private var assassinClass:Class;
      
      private var unlockedAssassinClass:Class;
      
      private var knightClass:Class;
      
      private var unlockedKnightClass:Class;
      
      private var undeadClass:Class;
      
      private var unlockedUndeadClass:Class;
      
      private var cultistClass:Class;
      
      private var unlockedCultistClass:Class;
      
      private var elderClass:Class;
      
      private var unlockedElderClass:Class;
      
      private var demonslayerClass:Class;
      
      private var unlockedDemonslayerClass:Class;
      
      private var unitClass:Class;
      
      private var unlockedUnitClass:Class;
      
      private var potionClass:Class;
      
      private var unlockedPotionClass:Class;
      
      private var spellClass:Class;
      
      private var unlockedSpellClass:Class;
      
      private var iconImage:Bitmap;
      
      private var goldImage:Bitmap;
      
      private var unlockedGoldImage:Bitmap;
      
      private var farmerImage:Bitmap;
      
      private var unlockedFarmerImage:Bitmap;
      
      private var lootImage:Bitmap;
      
      private var unlockedLootImage:Bitmap;
      
      private var merchantImage:Bitmap;
      
      private var unlockedMerchantImage:Bitmap;
      
      private var mouseImage:Bitmap;
      
      private var unlockedMouseImage:Bitmap;
      
      private var loveImage:Bitmap;
      
      private var unlockedLoveImage:Bitmap;
      
      private var clockImage:Bitmap;
      
      private var unlockedClockImage:Bitmap;
      
      private var pestImage:Bitmap;
      
      private var unlockedPestImage:Bitmap;
      
      private var levelImage:Bitmap;
      
      private var unlockedLevelImage:Bitmap;
      
      private var dpsImage:Bitmap;
      
      private var unlockedDPSImage:Bitmap;
      
      private var warriorImage:Bitmap;
      
      private var unlockedWarriorImage:Bitmap;
      
      private var mageImage:Bitmap;
      
      private var unlockedMageImage:Bitmap;
      
      private var gruntImage:Bitmap;
      
      private var unlockedGruntImage:Bitmap;
      
      private var assassinImage:Bitmap;
      
      private var unlockedAssassinImage:Bitmap;
      
      private var knightImage:Bitmap;
      
      private var unlockedKnightImage:Bitmap;
      
      private var undeadImage:Bitmap;
      
      private var unlockedUndeadImage:Bitmap;
      
      private var cultistImage:Bitmap;
      
      private var unlockedCultistImage:Bitmap;
      
      private var elderImage:Bitmap;
      
      private var unlockedElderImage:Bitmap;
      
      private var demonslayerImage:Bitmap;
      
      private var unlockedDemonslayerImage:Bitmap;
      
      private var unitImage:Bitmap;
      
      private var unlockedUnitImage:Bitmap;
      
      private var potionImage:Bitmap;
      
      private var unlockedPotionImage:Bitmap;
      
      private var spellImage:Bitmap;
      
      private var unlockedSpellImage:Bitmap;
      
      private var sprite:Sprite;
      
      private var achievementCode:int;
      
      public var description:String;
      
      public function AchievementIcon(param1:int, param2:int, param3:int)
      {
         this.iconClass = AchievementIcon_iconClass;
         this.goldClass = AchievementIcon_goldClass;
         this.unlockedGoldClass = AchievementIcon_unlockedGoldClass;
         this.farmerClass = AchievementIcon_farmerClass;
         this.unlockedFarmerClass = AchievementIcon_unlockedFarmerClass;
         this.lootClass = AchievementIcon_lootClass;
         this.unlockedLootClass = AchievementIcon_unlockedLootClass;
         this.merchantClass = AchievementIcon_merchantClass;
         this.unlockedMerchantClass = AchievementIcon_unlockedMerchantClass;
         this.mouseClass = AchievementIcon_mouseClass;
         this.unlockedMouseClass = AchievementIcon_unlockedMouseClass;
         this.loveClass = AchievementIcon_loveClass;
         this.unlockedLoveClass = AchievementIcon_unlockedLoveClass;
         this.clockClass = AchievementIcon_clockClass;
         this.unlockedClockClass = AchievementIcon_unlockedClockClass;
         this.pestClass = AchievementIcon_pestClass;
         this.unlockedPestClass = AchievementIcon_unlockedPestClass;
         this.levelClass = AchievementIcon_levelClass;
         this.unlockedLevelClass = AchievementIcon_unlockedLevelClass;
         this.dpsClass = AchievementIcon_dpsClass;
         this.unlockedDPSClass = AchievementIcon_unlockedDPSClass;
         this.warriorClass = AchievementIcon_warriorClass;
         this.unlockedWarriorClass = AchievementIcon_unlockedWarriorClass;
         this.mageClass = AchievementIcon_mageClass;
         this.unlockedMageClass = AchievementIcon_unlockedMageClass;
         this.gruntClass = AchievementIcon_gruntClass;
         this.unlockedGruntClass = AchievementIcon_unlockedGruntClass;
         this.assassinClass = AchievementIcon_assassinClass;
         this.unlockedAssassinClass = AchievementIcon_unlockedAssassinClass;
         this.knightClass = AchievementIcon_knightClass;
         this.unlockedKnightClass = AchievementIcon_unlockedKnightClass;
         this.undeadClass = AchievementIcon_undeadClass;
         this.unlockedUndeadClass = AchievementIcon_unlockedUndeadClass;
         this.cultistClass = AchievementIcon_cultistClass;
         this.unlockedCultistClass = AchievementIcon_unlockedCultistClass;
         this.elderClass = AchievementIcon_elderClass;
         this.unlockedElderClass = AchievementIcon_unlockedElderClass;
         this.demonslayerClass = AchievementIcon_demonslayerClass;
         this.unlockedDemonslayerClass = AchievementIcon_unlockedDemonslayerClass;
         this.unitClass = AchievementIcon_unitClass;
         this.unlockedUnitClass = AchievementIcon_unlockedUnitClass;
         this.potionClass = AchievementIcon_potionClass;
         this.unlockedPotionClass = AchievementIcon_unlockedPotionClass;
         this.spellClass = AchievementIcon_spellClass;
         this.unlockedSpellClass = AchievementIcon_unlockedSpellClass;
         this.iconImage = new this.iconClass();
         this.goldImage = new this.goldClass();
         this.unlockedGoldImage = new this.unlockedGoldClass();
         this.farmerImage = new this.farmerClass();
         this.unlockedFarmerImage = new this.unlockedFarmerClass();
         this.lootImage = new this.lootClass();
         this.unlockedLootImage = new this.unlockedLootClass();
         this.merchantImage = new this.merchantClass();
         this.unlockedMerchantImage = new this.unlockedMerchantClass();
         this.mouseImage = new this.mouseClass();
         this.unlockedMouseImage = new this.unlockedMouseClass();
         this.loveImage = new this.loveClass();
         this.unlockedLoveImage = new this.unlockedLoveClass();
         this.clockImage = new this.clockClass();
         this.unlockedClockImage = new this.unlockedClockClass();
         this.pestImage = new this.pestClass();
         this.unlockedPestImage = new this.unlockedPestClass();
         this.levelImage = new this.levelClass();
         this.unlockedLevelImage = new this.unlockedLevelClass();
         this.dpsImage = new this.dpsClass();
         this.unlockedDPSImage = new this.unlockedDPSClass();
         this.warriorImage = new this.warriorClass();
         this.unlockedWarriorImage = new this.unlockedWarriorClass();
         this.mageImage = new this.mageClass();
         this.unlockedMageImage = new this.unlockedMageClass();
         this.gruntImage = new this.gruntClass();
         this.unlockedGruntImage = new this.unlockedGruntClass();
         this.assassinImage = new this.assassinClass();
         this.unlockedAssassinImage = new this.unlockedAssassinClass();
         this.knightImage = new this.knightClass();
         this.unlockedKnightImage = new this.unlockedKnightClass();
         this.undeadImage = new this.undeadClass();
         this.unlockedUndeadImage = new this.unlockedUndeadClass();
         this.cultistImage = new this.cultistClass();
         this.unlockedCultistImage = new this.unlockedCultistClass();
         this.elderImage = new this.elderClass();
         this.unlockedElderImage = new this.unlockedElderClass();
         this.demonslayerImage = new this.demonslayerClass();
         this.unlockedDemonslayerImage = new this.unlockedDemonslayerClass();
         this.unitImage = new this.unitClass();
         this.unlockedUnitImage = new this.unlockedUnitClass();
         this.potionImage = new this.potionClass();
         this.unlockedPotionImage = new this.unlockedPotionClass();
         this.spellImage = new this.spellClass();
         this.unlockedSpellImage = new this.unlockedSpellClass();
         this.sprite = new Sprite();
         super();
         this.achievementCode = param3;
         this.sprite.addChild(this.iconImage);
         this.description = "???";
         switch(this.achievementCode)
         {
            case 0:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold I";
               break;
            case 1:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold II";
               break;
            case 2:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold III";
               break;
            case 3:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold IV";
               break;
            case 4:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold V";
               break;
            case 5:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold VI";
               break;
            case 6:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold VII";
               break;
            case 7:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold VIII";
               break;
            case 8:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold IX";
               break;
            case 9:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.goldImage);
               this.description = "Gold X";
               break;
            case 10:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.farmerImage);
               this.description = "Farmer I";
               break;
            case 11:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.farmerImage);
               this.description = "Farmer II";
               break;
            case 12:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.farmerImage);
               this.description = "Farmer III";
               break;
            case 13:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot I";
               break;
            case 14:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot II";
               break;
            case 15:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot III";
               break;
            case 16:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot IV";
               break;
            case 17:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot V";
               break;
            case 18:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot VI";
               break;
            case 19:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot VII";
               break;
            case 20:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Loot VIII";
               break;
            case 21:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.lootImage);
               this.description = "Geared Up";
               break;
            case 22:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.merchantImage);
               this.description = "Merchant I";
               break;
            case 23:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.merchantImage);
               this.description = "Merchant II";
               break;
            case 24:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.merchantImage);
               this.description = "Merchant III";
               break;
            case 25:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.merchantImage);
               this.description = "Merchant IV";
               break;
            case 26:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.merchantImage);
               this.description = "Merchant V";
               break;
            case 27:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.merchantImage);
               this.description = "Merchant VI";
               break;
            case 28:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.merchantImage);
               this.description = "High Roller";
               break;
            case 29:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mouseImage);
               this.description = "Clicker I";
               break;
            case 30:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mouseImage);
               this.description = "Clicker II";
               break;
            case 31:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mouseImage);
               this.description = "Clicker III";
               break;
            case 32:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.spellImage);
               this.description = "Spellcaster I";
               break;
            case 33:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.spellImage);
               this.description = "Spellcaster II";
               break;
            case 34:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.spellImage);
               this.description = "Spellcaster III";
               break;
            case 35:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.potionImage);
               this.description = "Alchemist I";
               break;
            case 36:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.potionImage);
               this.description = "Alchemist II";
               break;
            case 37:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.potionImage);
               this.description = "Alchemist III";
               break;
            case 38:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mouseImage);
               this.description = "Idler";
               break;
            case 39:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.loveImage);
               this.description = "Developer Love";
               break;
            case 40:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.loveImage);
               this.description = "Artist Love";
               break;
            case 41:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.clockImage);
               this.description = "Go to Bed";
               break;
            case 42:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.pestImage);
               this.description = "Pest Control";
               break;
            case 43:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.levelImage);
               this.description = "Vanilla WoW";
               break;
            case 44:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.dpsImage);
               this.description = "DPS I";
               break;
            case 45:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.dpsImage);
               this.description = "DPS II";
               break;
            case 46:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.dpsImage);
               this.description = "DPS III";
               break;
            case 47:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.dpsImage);
               this.description = "DPS IV";
               break;
            case 48:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.dpsImage);
               this.description = "DPS V";
               break;
            case 49:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.warriorImage);
               this.description = "Warrior I";
               break;
            case 50:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.warriorImage);
               this.description = "Warrior II";
               break;
            case 51:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.warriorImage);
               this.description = "Warrior III";
               break;
            case 52:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.warriorImage);
               this.description = "Warrior IV";
               break;
            case 53:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mageImage);
               this.description = "Mage I";
               break;
            case 54:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mageImage);
               this.description = "Mage II";
               break;
            case 55:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mageImage);
               this.description = "Mage III";
               break;
            case 56:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.mageImage);
               this.description = "Mage IV";
               break;
            case 57:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.gruntImage);
               this.description = "Grunt I";
               break;
            case 58:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.gruntImage);
               this.description = "Grunt II";
               break;
            case 59:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.gruntImage);
               this.description = "Grunt III";
               break;
            case 60:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.gruntImage);
               this.description = "Grunt IV";
               break;
            case 61:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.assassinImage);
               this.description = "Assassin I";
               break;
            case 62:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.assassinImage);
               this.description = "Assassin II";
               break;
            case 63:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.assassinImage);
               this.description = "Assassin III";
               break;
            case 64:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.assassinImage);
               this.description = "Assassin IV";
               break;
            case 65:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.knightImage);
               this.description = "Knight I";
               break;
            case 66:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.knightImage);
               this.description = "Knight II";
               break;
            case 67:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.knightImage);
               this.description = "Knight III";
               break;
            case 68:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.knightImage);
               this.description = "Knight IV";
               break;
            case 69:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.undeadImage);
               this.description = "Undead I";
               break;
            case 70:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.undeadImage);
               this.description = "Undead II";
               break;
            case 71:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.undeadImage);
               this.description = "Undead III";
               break;
            case 72:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.undeadImage);
               this.description = "Undead IV";
               break;
            case 73:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.undeadImage);
               this.description = "Undead V";
               break;
            case 74:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.undeadImage);
               this.description = "Undead VI";
               break;
            case 75:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.demonslayerImage);
               this.description = "Demonslayer";
               break;
            case 76:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.cultistImage);
               this.description = "Cultist I";
               break;
            case 77:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.cultistImage);
               this.description = "Cultist II";
               break;
            case 78:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.cultistImage);
               this.description = "Cultist III";
               break;
            case 79:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.cultistImage);
               this.description = "Cultist IV";
               break;
            case 80:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.elderImage);
               this.description = "Elder I";
               break;
            case 81:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.elderImage);
               this.description = "Elder II";
               break;
            case 82:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.elderImage);
               this.description = "Elder III";
               break;
            case 83:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.elderImage);
               this.description = "Elder IV";
               break;
            case 84:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.unitImage);
               this.description = "Unit I";
               break;
            case 85:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.unitImage);
               this.description = "Unit II";
               break;
            case 86:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.unitImage);
               this.description = "Unit III";
               break;
            case 87:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.unitImage);
               this.description = "Unit IV";
               break;
            case 88:
               this.sprite.removeChild(this.iconImage);
               this.sprite.addChild(this.unitImage);
               this.description = "Unit V";
         }
         this.CheckIfUnlocked();
         this.sprite.x = param1;
         this.sprite.y = param2;
         this.sprite.alpha = 0;
         GameSystem.sta.addChild(this.sprite);
      }
      
      public function ChangeAlpha(param1:int) : void
      {
         this.sprite.alpha = param1;
      }
      
      public function CheckIfUnlocked() : void
      {
         switch(this.achievementCode)
         {
            case 0:
               if(GameSystem.saveData.data.lifetimeGold >= 1 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet your first gold!";
               }
               break;
            case 1:
               if(GameSystem.saveData.data.lifetimeGold >= 1000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 1,000g";
               }
               break;
            case 2:
               if(GameSystem.saveData.data.lifetimeGold >= 10000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 10,000g";
               }
               break;
            case 3:
               if(GameSystem.saveData.data.lifetimeGold >= 100000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 100,000g";
               }
               break;
            case 4:
               if(GameSystem.saveData.data.lifetimeGold >= 1000000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 1,000,000g";
               }
               break;
            case 5:
               if(GameSystem.saveData.data.lifetimeGold >= 10000000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 10,000,000g";
               }
               break;
            case 6:
               if(GameSystem.saveData.data.lifetimeGold >= 100000000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 100,000,000g";
               }
               break;
            case 7:
               if(GameSystem.saveData.data.lifetimeGold >= 1000000000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 1,000,000,000g";
               }
               break;
            case 8:
               if(GameSystem.saveData.data.lifetimeGold >= 10000000000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 10,000,000,000g";
               }
               break;
            case 9:
               if(GameSystem.saveData.data.lifetimeGold >= 100000000000 && !this.sprite.contains(this.unlockedGoldImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.goldImage);
                  this.sprite.addChild(this.unlockedGoldImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nGet 100,000,000,000g";
               }
               break;
            case 10:
               if(GameSystem.saveData.data.goldFromFarming >= 1000 && !this.sprite.contains(this.unlockedFarmerImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.farmerImage);
                  this.sprite.addChild(this.unlockedFarmerImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFarm 1,000g";
               }
               break;
            case 11:
               if(GameSystem.saveData.data.goldFromFarming >= 10000 && !this.sprite.contains(this.unlockedFarmerImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.farmerImage);
                  this.sprite.addChild(this.unlockedFarmerImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFarm 10,000g";
               }
               break;
            case 12:
               if(GameSystem.saveData.data.goldFromFarming >= 100000 && !this.sprite.contains(this.unlockedFarmerImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.farmerImage);
                  this.sprite.addChild(this.unlockedFarmerImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFarm 100,000g";
               }
               break;
            case 13:
               if(GameSystem.saveData.data.lootFound >= 1 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind your first loot!";
               }
               break;
            case 14:
               if(GameSystem.saveData.data.lootFound >= 5 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind 5 loot";
               }
               break;
            case 15:
               if(GameSystem.saveData.data.lootFound >= 10 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind 10 loot";
               }
               break;
            case 16:
               if(GameSystem.saveData.data.lootFound >= 50 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind 50 loot";
               }
               break;
            case 17:
               if(GameSystem.saveData.data.lootFound >= 100 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind 100 loot";
               }
               break;
            case 18:
               if(GameSystem.saveData.data.lootFound >= 250 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind 250 loot";
               }
               break;
            case 19:
               if(GameSystem.saveData.data.lootFound >= 500 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind 500 loot";
               }
               break;
            case 20:
               if(GameSystem.saveData.data.lootFound >= 1000 && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nFind 1,000 loot";
               }
               break;
            case 21:
               if(this.CheckIfGearedUp() && !this.sprite.contains(this.unlockedLootImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.lootImage);
                  this.sprite.addChild(this.unlockedLootImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nEquip a piece of loot\nin every class slot";
               }
               break;
            case 22:
               if(GameSystem.saveData.data.lootSold >= 1 && !this.sprite.contains(this.unlockedMerchantImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.merchantImage);
                  this.sprite.addChild(this.unlockedMerchantImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSell 1 loot";
               }
               break;
            case 23:
               if(GameSystem.saveData.data.lootSold >= 10 && !this.sprite.contains(this.unlockedMerchantImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.merchantImage);
                  this.sprite.addChild(this.unlockedMerchantImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSell 10 loot";
               }
               break;
            case 24:
               if(GameSystem.saveData.data.lootSold >= 50 && !this.sprite.contains(this.unlockedMerchantImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.merchantImage);
                  this.sprite.addChild(this.unlockedMerchantImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSell 50 loot";
               }
               break;
            case 25:
               if(GameSystem.saveData.data.lootSold >= 100 && !this.sprite.contains(this.unlockedMerchantImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.merchantImage);
                  this.sprite.addChild(this.unlockedMerchantImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSell 100 loot";
               }
               break;
            case 26:
               if(GameSystem.saveData.data.lootSold >= 500 && !this.sprite.contains(this.unlockedMerchantImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.merchantImage);
                  this.sprite.addChild(this.unlockedMerchantImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSell 500 loot";
               }
               break;
            case 27:
               if(GameSystem.saveData.data.lootSold >= 1000 && !this.sprite.contains(this.unlockedMerchantImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.merchantImage);
                  this.sprite.addChild(this.unlockedMerchantImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSell 1,000 loot";
               }
               break;
            case 28:
               if(GameSystem.saveData.data.tenK && !this.sprite.contains(this.unlockedMerchantImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.merchantImage);
                  this.sprite.addChild(this.unlockedMerchantImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSell a piece of loot\nworth 10,000g or more";
               }
               break;
            case 29:
               if(GameSystem.saveData.data.clicks >= 100 && !this.sprite.contains(this.unlockedMouseImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mouseImage);
                  this.sprite.addChild(this.unlockedMouseImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nClick 100 times";
               }
               break;
            case 30:
               if(GameSystem.saveData.data.clicks >= 1000 && !this.sprite.contains(this.unlockedMouseImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mouseImage);
                  this.sprite.addChild(this.unlockedMouseImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nClick 1,000 times";
               }
               break;
            case 31:
               if(GameSystem.saveData.data.clicks >= 5000 && !this.sprite.contains(this.unlockedMouseImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mouseImage);
                  this.sprite.addChild(this.unlockedMouseImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nClick 5,000 times";
               }
               break;
            case 32:
               if(GameSystem.saveData.data.spellsUsed >= 1 && !this.sprite.contains(this.unlockedSpellImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.spellImage);
                  this.sprite.addChild(this.unlockedSpellImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nCast 1 spell";
               }
               break;
            case 33:
               if(GameSystem.saveData.data.spellsUsed >= 10 && !this.sprite.contains(this.unlockedSpellImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.spellImage);
                  this.sprite.addChild(this.unlockedSpellImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nCast 10 spells";
               }
               break;
            case 34:
               if(GameSystem.saveData.data.spellsUsed >= 25 && !this.sprite.contains(this.unlockedSpellImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.spellImage);
                  this.sprite.addChild(this.unlockedSpellImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nCast 25 spells";
               }
               break;
            case 35:
               if(GameSystem.saveData.data.potionsUsed >= 1 && !this.sprite.contains(this.unlockedPotionImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.potionImage);
                  this.sprite.addChild(this.unlockedPotionImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nDrink 1 potion";
               }
               break;
            case 36:
               if(GameSystem.saveData.data.potionsUsed >= 10 && !this.sprite.contains(this.unlockedPotionImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.potionImage);
                  this.sprite.addChild(this.unlockedPotionImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nDrink 10 potions";
               }
               break;
            case 37:
               if(GameSystem.saveData.data.potionsUsed >= 25 && !this.sprite.contains(this.unlockedPotionImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.potionImage);
                  this.sprite.addChild(this.unlockedPotionImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nDrink 25 potions";
               }
               break;
            case 38:
               if((GameSystem.saveData.data.clickTimer >= 1800 || GameSystem.saveData.data.idler) && !this.sprite.contains(this.unlockedMouseImage))
               {
                  GameSystem.saveData.data.idler = true;
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mouseImage);
                  this.sprite.addChild(this.unlockedMouseImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nDon\'t farm for 30 minutes.";
               }
               break;
            case 39:
               if(GameSystem.saveData.data.visitDevWebsite && !this.sprite.contains(this.unlockedLoveImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.loveImage);
                  this.sprite.addChild(this.unlockedLoveImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nVisit TrampolineTales.com";
               }
               break;
            case 40:
               if(GameSystem.saveData.data.visitArtistWebsite && !this.sprite.contains(this.unlockedLoveImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.loveImage);
                  this.sprite.addChild(this.unlockedLoveImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nVisit oryxdesignlab.com";
               }
               break;
            case 41:
               if((GameSystem.date.hours <= 5 || GameSystem.saveData.data.goToBed) && !this.sprite.contains(this.unlockedClockImage))
               {
                  GameSystem.saveData.data.goToBed = true;
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.clockImage);
                  this.sprite.addChild(this.unlockedClockImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nPlay between 12AM and 5AM";
               }
               break;
            case 42:
               if(GameSystem.saveData.data.ratsKilled >= 50000 && !this.sprite.contains(this.unlockedPestImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.pestImage);
                  this.sprite.addChild(this.unlockedPestImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nKill 50,000 Rats";
               }
               break;
            case 43:
               if(GameSystem.saveData.data.level60Character && !this.sprite.contains(this.unlockedLevelImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.levelImage);
                  this.sprite.addChild(this.unlockedLevelImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave a single unit\nreach Level 60";
               }
               break;
            case 44:
               if(GameSystem.saveData.data.totalDPS >= 100 && !this.sprite.contains(this.unlockedDPSImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.dpsImage);
                  this.sprite.addChild(this.unlockedDPSImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Total\nDamage per Second";
               }
               break;
            case 45:
               if(GameSystem.saveData.data.totalDPS >= 1000 && !this.sprite.contains(this.unlockedDPSImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.dpsImage);
                  this.sprite.addChild(this.unlockedDPSImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1,000 Total\nDamage per Second";
               }
               break;
            case 46:
               if(GameSystem.saveData.data.totalDPS >= 10000 && !this.sprite.contains(this.unlockedDPSImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.dpsImage);
                  this.sprite.addChild(this.unlockedDPSImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10,000 Total\nDamage per Second";
               }
               break;
            case 47:
               if(GameSystem.saveData.data.totalDPS >= 100000 && !this.sprite.contains(this.unlockedDPSImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.dpsImage);
                  this.sprite.addChild(this.unlockedDPSImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100,000 Total\nDamage per Second";
               }
               break;
            case 48:
               if(GameSystem.saveData.data.totalDPS >= 1000000 && !this.sprite.contains(this.unlockedDPSImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.dpsImage);
                  this.sprite.addChild(this.unlockedDPSImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1,000,000 Total\nDamage per Second";
               }
               break;
            case 49:
               if(GameSystem.saveData.data.warriors.length >= 1 && !this.sprite.contains(this.unlockedWarriorImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.warriorImage);
                  this.sprite.addChild(this.unlockedWarriorImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Warrior";
               }
               break;
            case 50:
               if(GameSystem.saveData.data.warriors.length >= 10 && !this.sprite.contains(this.unlockedWarriorImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.warriorImage);
                  this.sprite.addChild(this.unlockedWarriorImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Warriors";
               }
               break;
            case 51:
               if(GameSystem.saveData.data.warriors.length >= 50 && !this.sprite.contains(this.unlockedWarriorImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.warriorImage);
                  this.sprite.addChild(this.unlockedWarriorImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Warriors";
               }
               break;
            case 52:
               if(GameSystem.saveData.data.warriors.length >= 100 && !this.sprite.contains(this.unlockedWarriorImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.warriorImage);
                  this.sprite.addChild(this.unlockedWarriorImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Warriors";
               }
               break;
            case 53:
               if(GameSystem.saveData.data.mages.length >= 1 && !this.sprite.contains(this.unlockedMageImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mageImage);
                  this.sprite.addChild(this.unlockedMageImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Mage";
               }
               break;
            case 54:
               if(GameSystem.saveData.data.mages.length >= 10 && !this.sprite.contains(this.unlockedMageImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mageImage);
                  this.sprite.addChild(this.unlockedMageImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Mages";
               }
               break;
            case 55:
               if(GameSystem.saveData.data.mages.length >= 50 && !this.sprite.contains(this.unlockedMageImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mageImage);
                  this.sprite.addChild(this.unlockedMageImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Mages";
               }
               break;
            case 56:
               if(GameSystem.saveData.data.mages.length >= 100 && !this.sprite.contains(this.unlockedMageImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.mageImage);
                  this.sprite.addChild(this.unlockedMageImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Mages";
               }
               break;
            case 57:
               if(GameSystem.saveData.data.grunts.length >= 1 && !this.sprite.contains(this.unlockedGruntImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.gruntImage);
                  this.sprite.addChild(this.unlockedGruntImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Grunt";
               }
               break;
            case 58:
               if(GameSystem.saveData.data.grunts.length >= 10 && !this.sprite.contains(this.unlockedGruntImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.gruntImage);
                  this.sprite.addChild(this.unlockedGruntImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Grunts";
               }
               break;
            case 59:
               if(GameSystem.saveData.data.grunts.length >= 50 && !this.sprite.contains(this.unlockedGruntImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.gruntImage);
                  this.sprite.addChild(this.unlockedGruntImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Grunts";
               }
               break;
            case 60:
               if(GameSystem.saveData.data.grunts.length >= 100 && !this.sprite.contains(this.unlockedGruntImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.gruntImage);
                  this.sprite.addChild(this.unlockedGruntImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Grunts";
               }
               break;
            case 61:
               if(GameSystem.saveData.data.assassins.length >= 1 && !this.sprite.contains(this.unlockedAssassinImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.assassinImage);
                  this.sprite.addChild(this.unlockedAssassinImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Assassin";
               }
               break;
            case 62:
               if(GameSystem.saveData.data.assassins.length >= 10 && !this.sprite.contains(this.unlockedAssassinImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.assassinImage);
                  this.sprite.addChild(this.unlockedAssassinImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Assassins";
               }
               break;
            case 63:
               if(GameSystem.saveData.data.assassins.length >= 50 && !this.sprite.contains(this.unlockedAssassinImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.assassinImage);
                  this.sprite.addChild(this.unlockedAssassinImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Assassins";
               }
               break;
            case 64:
               if(GameSystem.saveData.data.assassins.length >= 100 && !this.sprite.contains(this.unlockedAssassinImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.assassinImage);
                  this.sprite.addChild(this.unlockedAssassinImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Assassins";
               }
               break;
            case 65:
               if(GameSystem.saveData.data.knights.length >= 1 && !this.sprite.contains(this.unlockedKnightImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.knightImage);
                  this.sprite.addChild(this.unlockedKnightImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Knight";
               }
               break;
            case 66:
               if(GameSystem.saveData.data.knights.length >= 10 && !this.sprite.contains(this.unlockedKnightImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.knightImage);
                  this.sprite.addChild(this.unlockedKnightImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Knights";
               }
               break;
            case 67:
               if(GameSystem.saveData.data.knights.length >= 50 && !this.sprite.contains(this.unlockedKnightImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.knightImage);
                  this.sprite.addChild(this.unlockedKnightImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Knights";
               }
               break;
            case 68:
               if(GameSystem.saveData.data.knights.length >= 100 && !this.sprite.contains(this.unlockedKnightImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.knightImage);
                  this.sprite.addChild(this.unlockedKnightImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Knights";
               }
               break;
            case 69:
               if(GameSystem.saveData.data.undead.length >= 1 && !this.sprite.contains(this.unlockedUndeadImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.undeadImage);
                  this.sprite.addChild(this.unlockedUndeadImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Undead";
               }
               break;
            case 70:
               if(GameSystem.saveData.data.undead.length >= 10 && !this.sprite.contains(this.unlockedUndeadImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.undeadImage);
                  this.sprite.addChild(this.unlockedUndeadImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Undead";
               }
               break;
            case 71:
               if(GameSystem.saveData.data.undead.length >= 50 && !this.sprite.contains(this.unlockedUndeadImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.undeadImage);
                  this.sprite.addChild(this.unlockedUndeadImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Undead";
               }
               break;
            case 72:
               if(GameSystem.saveData.data.undead.length >= 100 && !this.sprite.contains(this.unlockedUndeadImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.undeadImage);
                  this.sprite.addChild(this.unlockedUndeadImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Undead";
               }
               break;
            case 73:
               if(GameSystem.saveData.data.undead.length >= 500 && !this.sprite.contains(this.unlockedUndeadImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.undeadImage);
                  this.sprite.addChild(this.unlockedUndeadImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 500 Undead";
               }
               break;
            case 74:
               if(GameSystem.saveData.data.undead.length >= 666 && !this.sprite.contains(this.unlockedUndeadImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.undeadImage);
                  this.sprite.addChild(this.unlockedUndeadImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 666 Undead";
               }
               break;
            case 75:
               if(GameSystem.saveData.data.demonslayer && !this.sprite.contains(this.unlockedDemonslayerImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.demonslayerImage);
                  this.sprite.addChild(this.unlockedDemonslayerImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nSlay the demons";
               }
               break;
            case 76:
               if(GameSystem.saveData.data.cultists.length >= 1 && !this.sprite.contains(this.unlockedCultistImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.cultistImage);
                  this.sprite.addChild(this.unlockedCultistImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Cultist";
               }
               break;
            case 77:
               if(GameSystem.saveData.data.cultists.length >= 10 && !this.sprite.contains(this.unlockedCultistImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.cultistImage);
                  this.sprite.addChild(this.unlockedCultistImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Cultists";
               }
               break;
            case 78:
               if(GameSystem.saveData.data.cultists.length >= 50 && !this.sprite.contains(this.unlockedCultistImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.cultistImage);
                  this.sprite.addChild(this.unlockedCultistImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Cultists";
               }
               break;
            case 79:
               if(GameSystem.saveData.data.cultists.length >= 100 && !this.sprite.contains(this.unlockedCultistImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.cultistImage);
                  this.sprite.addChild(this.unlockedCultistImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Cultists";
               }
               break;
            case 80:
               if(GameSystem.saveData.data.elders.length >= 1 && !this.sprite.contains(this.unlockedElderImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.elderImage);
                  this.sprite.addChild(this.unlockedElderImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 1 Elder";
               }
               break;
            case 81:
               if(GameSystem.saveData.data.elders.length >= 10 && !this.sprite.contains(this.unlockedElderImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.elderImage);
                  this.sprite.addChild(this.unlockedElderImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 10 Elders";
               }
               break;
            case 82:
               if(GameSystem.saveData.data.elders.length >= 50 && !this.sprite.contains(this.unlockedElderImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.elderImage);
                  this.sprite.addChild(this.unlockedElderImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Elders";
               }
               break;
            case 83:
               if(GameSystem.saveData.data.elders.length >= 100 && !this.sprite.contains(this.unlockedElderImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.elderImage);
                  this.sprite.addChild(this.unlockedElderImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Elders";
               }
               break;
            case 84:
               if(this.GetTotalUnits() >= 50 && !this.sprite.contains(this.unlockedUnitImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.unitImage);
                  this.sprite.addChild(this.unlockedUnitImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 50 Units";
               }
               break;
            case 85:
               if(this.GetTotalUnits() >= 100 && !this.sprite.contains(this.unlockedUnitImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.unitImage);
                  this.sprite.addChild(this.unlockedUnitImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 100 Units";
               }
               break;
            case 86:
               if(this.GetTotalUnits() >= 200 && !this.sprite.contains(this.unlockedUnitImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.unitImage);
                  this.sprite.addChild(this.unlockedUnitImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 200 Units";
               }
               break;
            case 87:
               if(this.GetTotalUnits() >= 400 && !this.sprite.contains(this.unlockedUnitImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.unitImage);
                  this.sprite.addChild(this.unlockedUnitImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 400 Units";
               }
               break;
            case 88:
               if(this.GetTotalUnits() >= 800 && !this.sprite.contains(this.unlockedUnitImage))
               {
                  GameSystem.saveData.data.achievements++;
                  this.sprite.removeChild(this.unitImage);
                  this.sprite.addChild(this.unlockedUnitImage);
                  HUD.newAchievements++;
                  this.description = this.description + ":\nHave 800 Units";
               }
         }
      }
      
      private function CheckIfGearedUp() : Boolean
      {
         var _loc1_:int = 0;
         while(_loc1_ <= 15)
         {
            if(HUD.equippedLoot[_loc1_] == null)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
      
      private function GetTotalUnits() : int
      {
         var _loc1_:int = 0;
         _loc1_ = _loc1_ + GameSystem.saveData.data.warriors.length;
         _loc1_ = _loc1_ + GameSystem.saveData.data.mages.length;
         _loc1_ = _loc1_ + GameSystem.saveData.data.grunts.length;
         _loc1_ = _loc1_ + GameSystem.saveData.data.assassins.length;
         _loc1_ = _loc1_ + GameSystem.saveData.data.knights.length;
         _loc1_ = _loc1_ + GameSystem.saveData.data.undead.length;
         _loc1_ = _loc1_ + GameSystem.saveData.data.cultists.length;
         _loc1_ = _loc1_ + GameSystem.saveData.data.elders.length;
         return _loc1_;
      }
   }
}
