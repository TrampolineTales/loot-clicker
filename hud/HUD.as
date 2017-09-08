package gl.hud
{
   import com.newgrounds.API;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   import gl.data.Loot;
   import gl.data.units.Assassin;
   import gl.data.units.Cultist;
   import gl.data.units.Elder;
   import gl.data.units.Grunt;
   import gl.data.units.Knight;
   import gl.data.units.Mage;
   import gl.data.units.Undead;
   import gl.data.units.Unit;
   import gl.data.units.Warrior;
   import gl.data.units.enemies.EnemyStats;
   import gl.hud.buttons.AchievementsButton;
   import gl.hud.buttons.BuyButton;
   import gl.hud.buttons.FightButton;
   import gl.hud.buttons.KillsButton;
   import gl.hud.buttons.LootButton;
   import gl.hud.buttons.ShopButton;
   import gl.hud.buttons.StatsButton;
   import gl.hud.text.DPSText;
   import gl.hud.text.FightText;
   import gl.hud.text.LevelText;
   import gl.hud.text.TotalGoldText;
   import gl.system.GameSystem;
   
   public class HUD
   {
      
      public static var potionBuff:int = 0;
      
      public static var spellBuff:int = 0;
      
      public static var equippedLoot:Array = new Array(18);
      
      public static var newLoot:int = 0;
      
      public static var newAchievements:int = 0;
       
      
      private var classHUDClass:Class;
      
      private var goldClass:Class;
      
      private var ratClass:Class;
      
      private var crabClass:Class;
      
      private var batClass:Class;
      
      private var catClass:Class;
      
      private var sharkClass:Class;
      
      private var squidClass:Class;
      
      private var frogClass:Class;
      
      private var insectClass:Class;
      
      private var lizardClass:Class;
      
      private var camelClass:Class;
      
      private var ghostClass:Class;
      
      private var spiritClass:Class;
      
      private var demonClass:Class;
      
      private var warriorChestClass:Class;
      
      private var warriorBagClass:Class;
      
      private var mageChestClass:Class;
      
      private var mageBagClass:Class;
      
      private var gruntChestClass:Class;
      
      private var gruntBagClass:Class;
      
      private var assassinChestClass:Class;
      
      private var assassinBagClass:Class;
      
      private var knightChestClass:Class;
      
      private var knightBagClass:Class;
      
      private var undeadChestClass:Class;
      
      private var undeadBagClass:Class;
      
      private var cultistChestClass:Class;
      
      private var cultistBagClass:Class;
      
      private var elderChestClass:Class;
      
      private var elderBagClass:Class;
      
      private var mouseClass:Class;
      
      private var demonSoulClass:Class;
      
      private var spellClass:Class;
      
      private var potionClass:Class;
      
      private var fontClass:Class;
      
      private var textFormat:TextFormat;
      
      private var classHUD:Bitmap;
      
      private var classHUDSprite:Sprite;
      
      private var goldImage:Bitmap;
      
      private var goldSprite:Sprite;
      
      private var fightButton:FightButton;
      
      private var killsButton:KillsButton;
      
      private var shopButton:ShopButton;
      
      private var lootButton:LootButton;
      
      private var statsButton:StatsButton;
      
      private var achievementsButton:AchievementsButton;
      
      private var fpsText:TextField;
      
      private var equippedText:TextField;
      
      private var sellText:TextField;
      
      private var websiteText:TextField;
      
      private var artistWebsiteText:TextField;
      
      private var deleteSaveText:TextField;
      
      private var deleteSaveClicks:int = 0;
      
      private var timeChecker:uint = 0;
      
      private var potionTimer:int = 0;
      
      private var spellTimer:int = 0;
      
      private var warriorText:TextField;
      
      private var mageText:TextField;
      
      private var gruntText:TextField;
      
      private var assassinText:TextField;
      
      private var knightText:TextField;
      
      private var undeadText:TextField;
      
      private var cultistText:TextField;
      
      private var elderText:TextField;
      
      private var goldText:TextField;
      
      private var fps:Number = 30;
      
      private var frames:int;
      
      private var timeSinceOpened:Number = 0;
      
      private var oldTimeSinceOpened:Number = 0;
      
      private var statsText:TextField;
      
      private var totalGoldTexts:Array;
      
      private var levelTexts:Array;
      
      private var dpsTexts:Array;
      
      private var achievements:Array;
      
      private var items:Array;
      
      private var lootSprites:Array;
      
      private var loot:Array;
      
      private var mouseText:TextField;
      
      private var itemNotifications:TextField;
      
      private var lootNotifications:TextField;
      
      private var achievementNotifications:TextField;
      
      private var newItems:int = 0;
      
      private var lootSoldOrEquipped:int = 0;
      
      private var ratImage:Bitmap;
      
      private var ratSprite:Sprite;
      
      private var ratText:FightText;
      
      private var crabImage:Bitmap;
      
      private var crabSprite:Sprite;
      
      private var crabText:FightText;
      
      private var batImage:Bitmap;
      
      private var batSprite:Sprite;
      
      private var batText:FightText;
      
      private var catImage:Bitmap;
      
      private var catSprite:Sprite;
      
      private var catText:FightText;
      
      private var sharkImage:Bitmap;
      
      private var sharkSprite:Sprite;
      
      private var sharkText:FightText;
      
      private var squidImage:Bitmap;
      
      private var squidSprite:Sprite;
      
      private var squidText:FightText;
      
      private var frogImage:Bitmap;
      
      private var frogSprite:Sprite;
      
      private var frogText:FightText;
      
      private var insectImage:Bitmap;
      
      private var insectSprite:Sprite;
      
      private var insectText:FightText;
      
      private var lizardImage:Bitmap;
      
      private var lizardSprite:Sprite;
      
      private var lizardText:FightText;
      
      private var camelImage:Bitmap;
      
      private var camelSprite:Sprite;
      
      private var camelText:FightText;
      
      private var ghostImage:Bitmap;
      
      private var ghostSprite:Sprite;
      
      private var ghostText:FightText;
      
      private var spiritImage:Bitmap;
      
      private var spiritSprite:Sprite;
      
      private var spiritText:FightText;
      
      private var demonImage:Bitmap;
      
      private var demonSprite:Sprite;
      
      private var demonText:FightText;
      
      private var demonHealthBar:Shape;
      
      public function HUD()
      {
         this.classHUDClass = HUD_classHUDClass;
         this.goldClass = HUD_goldClass;
         this.ratClass = HUD_ratClass;
         this.crabClass = HUD_crabClass;
         this.batClass = HUD_batClass;
         this.catClass = HUD_catClass;
         this.sharkClass = HUD_sharkClass;
         this.squidClass = HUD_squidClass;
         this.frogClass = HUD_frogClass;
         this.insectClass = HUD_insectClass;
         this.lizardClass = HUD_lizardClass;
         this.camelClass = HUD_camelClass;
         this.ghostClass = HUD_ghostClass;
         this.spiritClass = HUD_spiritClass;
         this.demonClass = HUD_demonClass;
         this.warriorChestClass = HUD_warriorChestClass;
         this.warriorBagClass = HUD_warriorBagClass;
         this.mageChestClass = HUD_mageChestClass;
         this.mageBagClass = HUD_mageBagClass;
         this.gruntChestClass = HUD_gruntChestClass;
         this.gruntBagClass = HUD_gruntBagClass;
         this.assassinChestClass = HUD_assassinChestClass;
         this.assassinBagClass = HUD_assassinBagClass;
         this.knightChestClass = HUD_knightChestClass;
         this.knightBagClass = HUD_knightBagClass;
         this.undeadChestClass = HUD_undeadChestClass;
         this.undeadBagClass = HUD_undeadBagClass;
         this.cultistChestClass = HUD_cultistChestClass;
         this.cultistBagClass = HUD_cultistBagClass;
         this.elderChestClass = HUD_elderChestClass;
         this.elderBagClass = HUD_elderBagClass;
         this.mouseClass = HUD_mouseClass;
         this.demonSoulClass = HUD_demonSoulClass;
         this.spellClass = HUD_spellClass;
         this.potionClass = HUD_potionClass;
         this.fontClass = HUD_fontClass;
         this.textFormat = new TextFormat("ti84Font",16);
         this.classHUD = new this.classHUDClass();
         this.classHUDSprite = new Sprite();
         this.goldImage = new this.goldClass();
         this.goldSprite = new Sprite();
         this.fightButton = new FightButton();
         this.killsButton = new KillsButton();
         this.shopButton = new ShopButton();
         this.lootButton = new LootButton();
         this.statsButton = new StatsButton();
         this.achievementsButton = new AchievementsButton();
         this.fpsText = new TextField();
         this.equippedText = new TextField();
         this.sellText = new TextField();
         this.websiteText = new TextField();
         this.artistWebsiteText = new TextField();
         this.deleteSaveText = new TextField();
         this.warriorText = new TextField();
         this.mageText = new TextField();
         this.gruntText = new TextField();
         this.assassinText = new TextField();
         this.knightText = new TextField();
         this.undeadText = new TextField();
         this.cultistText = new TextField();
         this.elderText = new TextField();
         this.goldText = new TextField();
         this.statsText = new TextField();
         this.totalGoldTexts = new Array(8);
         this.levelTexts = new Array(8);
         this.dpsTexts = new Array(8);
         this.achievements = new Array(89);
         this.items = new Array(168);
         this.lootSprites = new Array();
         this.loot = new Array();
         this.mouseText = new TextField();
         this.itemNotifications = new TextField();
         this.lootNotifications = new TextField();
         this.achievementNotifications = new TextField();
         this.ratImage = new this.ratClass();
         this.ratSprite = new Sprite();
         this.crabImage = new this.crabClass();
         this.crabSprite = new Sprite();
         this.batImage = new this.batClass();
         this.batSprite = new Sprite();
         this.catImage = new this.catClass();
         this.catSprite = new Sprite();
         this.sharkImage = new this.sharkClass();
         this.sharkSprite = new Sprite();
         this.squidImage = new this.squidClass();
         this.squidSprite = new Sprite();
         this.frogImage = new this.frogClass();
         this.frogSprite = new Sprite();
         this.insectImage = new this.insectClass();
         this.insectSprite = new Sprite();
         this.lizardImage = new this.lizardClass();
         this.lizardSprite = new Sprite();
         this.camelImage = new this.camelClass();
         this.camelSprite = new Sprite();
         this.ghostImage = new this.ghostClass();
         this.ghostSprite = new Sprite();
         this.spiritImage = new this.spiritClass();
         this.spiritSprite = new Sprite();
         this.demonImage = new this.demonClass();
         this.demonSprite = new Sprite();
         this.demonHealthBar = new Shape();
         super();
         this.classHUDSprite.addChild(this.classHUD);
         this.classHUDSprite.y = 419;
         this.goldSprite.addChild(this.goldImage);
         this.goldSprite.x = 160;
         this.goldSprite.y = 2;
         this.ratSprite.x = 2;
         this.ratSprite.y = 188;
         this.ratSprite.alpha = 0;
         this.ratSprite.addChild(this.ratImage);
         this.crabSprite.x = 122;
         this.crabSprite.y = 188;
         this.crabSprite.alpha = 0;
         this.crabSprite.addChild(this.crabImage);
         this.batSprite.x = 242;
         this.batSprite.y = 188;
         this.batSprite.alpha = 0;
         this.batSprite.addChild(this.batImage);
         this.catSprite.x = 362;
         this.catSprite.y = 188;
         this.catSprite.alpha = 0;
         this.catSprite.addChild(this.catImage);
         this.sharkSprite.x = 482;
         this.sharkSprite.y = 188;
         this.sharkSprite.alpha = 0;
         this.sharkSprite.addChild(this.sharkImage);
         this.squidSprite.x = 602;
         this.squidSprite.y = 188;
         this.squidSprite.alpha = 0;
         this.squidSprite.addChild(this.squidImage);
         this.frogSprite.x = 2;
         this.frogSprite.y = 222;
         this.frogSprite.alpha = 0;
         this.frogSprite.addChild(this.frogImage);
         this.insectSprite.x = 122;
         this.insectSprite.y = 222;
         this.insectSprite.alpha = 0;
         this.insectSprite.addChild(this.insectImage);
         this.lizardSprite.x = 242;
         this.lizardSprite.y = 222;
         this.lizardSprite.alpha = 0;
         this.lizardSprite.addChild(this.lizardImage);
         this.camelSprite.x = 362;
         this.camelSprite.y = 222;
         this.camelSprite.alpha = 0;
         this.camelSprite.addChild(this.camelImage);
         this.ghostSprite.x = 482;
         this.ghostSprite.y = 222;
         this.ghostSprite.alpha = 0;
         this.ghostSprite.addChild(this.ghostImage);
         this.spiritSprite.x = 602;
         this.spiritSprite.y = 222;
         this.spiritSprite.alpha = 0;
         this.spiritSprite.addChild(this.spiritImage);
         this.demonSprite.x = 411 - this.demonImage.width / 2;
         this.demonSprite.y = 262;
         this.demonSprite.alpha = 0;
         this.demonSprite.addChild(this.demonImage);
         this.demonHealthBar.graphics.lineStyle(1,12895428,1);
         this.demonHealthBar.graphics.beginFill(12895428,1);
         this.demonHealthBar.graphics.drawRect(11,this.demonSprite.y + this.demonSprite.height + 25,798,11);
         this.demonHealthBar.graphics.endFill();
         this.demonHealthBar.alpha = 0;
         this.textFormat.leading = 2;
         this.fpsText.autoSize = TextFieldAutoSize.LEFT;
         this.fpsText.mouseEnabled = false;
         this.fpsText.embedFonts = true;
         this.fpsText.textColor = 12895428;
         this.fpsText.defaultTextFormat = this.textFormat;
         this.fpsText.x = 161;
         this.fpsText.y = 30;
         this.equippedText.autoSize = TextFieldAutoSize.LEFT;
         this.equippedText.mouseEnabled = false;
         this.equippedText.embedFonts = true;
         this.equippedText.textColor = 12895428;
         this.equippedText.defaultTextFormat = this.textFormat;
         this.equippedText.text = "Equipped:";
         this.equippedText.x = 822 - this.equippedText.width;
         this.equippedText.y = 30;
         this.equippedText.alpha = 0;
         this.sellText.autoSize = TextFieldAutoSize.LEFT;
         this.sellText.mouseEnabled = false;
         this.sellText.embedFonts = true;
         this.sellText.textColor = 12895428;
         this.sellText.defaultTextFormat = this.textFormat;
         this.sellText.text = "Sell:";
         this.sellText.x = 2;
         this.sellText.y = 262;
         this.sellText.alpha = 0;
         this.websiteText.autoSize = TextFieldAutoSize.LEFT;
         this.websiteText.selectable = false;
         this.websiteText.embedFonts = true;
         this.websiteText.textColor = 12895428;
         this.websiteText.defaultTextFormat = this.textFormat;
         this.websiteText.text = "TrampolineTales.com";
         this.websiteText.x = 411 - this.websiteText.width / 2;
         this.websiteText.y = 30;
         this.artistWebsiteText.autoSize = TextFieldAutoSize.LEFT;
         this.artistWebsiteText.selectable = false;
         this.artistWebsiteText.embedFonts = true;
         this.artistWebsiteText.textColor = 12895428;
         this.artistWebsiteText.defaultTextFormat = this.textFormat;
         this.artistWebsiteText.text = "oryxdesignlab.com";
         this.artistWebsiteText.x = 411 - this.artistWebsiteText.width / 2;
         this.artistWebsiteText.y = 46;
         this.warriorText.embedFonts = true;
         this.warriorText.mouseEnabled = false;
         this.warriorText.textColor = 12895428;
         this.warriorText.defaultTextFormat = this.textFormat;
         this.warriorText.x = 79;
         this.warriorText.y = 531;
         this.mageText.embedFonts = true;
         this.mageText.mouseEnabled = false;
         this.mageText.textColor = 12895428;
         this.mageText.defaultTextFormat = this.textFormat;
         this.mageText.x = 182;
         this.mageText.y = 531;
         this.gruntText.embedFonts = true;
         this.gruntText.mouseEnabled = false;
         this.gruntText.textColor = 12895428;
         this.gruntText.defaultTextFormat = this.textFormat;
         this.gruntText.x = 285;
         this.gruntText.y = 531;
         this.assassinText.embedFonts = true;
         this.assassinText.mouseEnabled = false;
         this.assassinText.textColor = 12895428;
         this.assassinText.defaultTextFormat = this.textFormat;
         this.assassinText.x = 388;
         this.assassinText.y = 531;
         this.knightText.embedFonts = true;
         this.knightText.mouseEnabled = false;
         this.knightText.textColor = 12895428;
         this.knightText.defaultTextFormat = this.textFormat;
         this.knightText.x = 491;
         this.knightText.y = 531;
         this.undeadText.embedFonts = true;
         this.undeadText.mouseEnabled = false;
         this.undeadText.textColor = 12895428;
         this.undeadText.defaultTextFormat = this.textFormat;
         this.undeadText.x = 594;
         this.undeadText.y = 531;
         this.cultistText.embedFonts = true;
         this.cultistText.mouseEnabled = false;
         this.cultistText.textColor = 12895428;
         this.cultistText.defaultTextFormat = this.textFormat;
         this.cultistText.x = 697;
         this.cultistText.y = 531;
         this.elderText.embedFonts = true;
         this.elderText.mouseEnabled = false;
         this.elderText.textColor = 12895428;
         this.elderText.defaultTextFormat = this.textFormat;
         this.elderText.x = 800;
         this.elderText.y = 531;
         this.goldText.autoSize = TextFieldAutoSize.LEFT;
         this.goldText.mouseEnabled = false;
         this.goldText.embedFonts = true;
         this.goldText.scaleX = 1.5;
         this.goldText.scaleY = 1.5;
         this.goldText.textColor = 12895428;
         this.goldText.defaultTextFormat = this.textFormat;
         this.goldText.x = 185;
         this.goldText.y = 1;
         this.deleteSaveText.autoSize = TextFieldAutoSize.LEFT;
         this.deleteSaveText.selectable = false;
         this.deleteSaveText.embedFonts = true;
         this.deleteSaveText.textColor = 12895428;
         this.deleteSaveText.defaultTextFormat = this.textFormat;
         this.deleteSaveText.text = "Delete Save Data";
         this.deleteSaveText.x = 822 - this.deleteSaveText.width;
         this.deleteSaveText.y = 400;
         this.deleteSaveText.alpha = 0;
         this.mouseText.autoSize = TextFieldAutoSize.LEFT;
         this.mouseText.mouseEnabled = false;
         this.mouseText.embedFonts = true;
         this.mouseText.textColor = 12895428;
         this.mouseText.defaultTextFormat = this.textFormat;
         this.mouseText.background = true;
         this.mouseText.backgroundColor = 0;
         this.statsText.autoSize = TextFieldAutoSize.LEFT;
         this.statsText.mouseEnabled = false;
         this.statsText.embedFonts = true;
         this.statsText.textColor = 12895428;
         this.statsText.defaultTextFormat = this.textFormat;
         this.statsText.x = 5;
         this.statsText.y = 188;
         this.statsText.alpha = 0;
         this.itemNotifications.autoSize = TextFieldAutoSize.LEFT;
         this.itemNotifications.mouseEnabled = false;
         this.itemNotifications.embedFonts = true;
         this.itemNotifications.textColor = 12895428;
         this.itemNotifications.defaultTextFormat = this.textFormat;
         this.itemNotifications.y = 110;
         this.itemNotifications.alpha = 0;
         this.achievementNotifications.autoSize = TextFieldAutoSize.LEFT;
         this.achievementNotifications.mouseEnabled = false;
         this.achievementNotifications.embedFonts = true;
         this.achievementNotifications.textColor = 12895428;
         this.achievementNotifications.defaultTextFormat = this.textFormat;
         this.achievementNotifications.y = 110;
         this.achievementNotifications.alpha = 0;
         this.lootNotifications.autoSize = TextFieldAutoSize.LEFT;
         this.lootNotifications.mouseEnabled = false;
         this.lootNotifications.embedFonts = true;
         this.lootNotifications.textColor = 12895428;
         this.lootNotifications.defaultTextFormat = this.textFormat;
         this.lootNotifications.y = 110;
         this.lootNotifications.alpha = 0;
         this.totalGoldTexts[0] = new TotalGoldText(94,506);
         this.totalGoldTexts[1] = new TotalGoldText(197,506);
         this.totalGoldTexts[2] = new TotalGoldText(300,506);
         this.totalGoldTexts[3] = new TotalGoldText(403,506);
         this.totalGoldTexts[4] = new TotalGoldText(506,506);
         this.totalGoldTexts[5] = new TotalGoldText(609,506);
         this.totalGoldTexts[6] = new TotalGoldText(712,506);
         this.totalGoldTexts[7] = new TotalGoldText(815,506);
         this.levelTexts[0] = new LevelText(94,477);
         this.levelTexts[1] = new LevelText(197,477);
         this.levelTexts[2] = new LevelText(300,477);
         this.levelTexts[3] = new LevelText(403,477);
         this.levelTexts[4] = new LevelText(506,477);
         this.levelTexts[5] = new LevelText(609,477);
         this.levelTexts[6] = new LevelText(712,477);
         this.levelTexts[7] = new LevelText(815,477);
         this.dpsTexts[0] = new DPSText(94,448);
         this.dpsTexts[1] = new DPSText(197,448);
         this.dpsTexts[2] = new DPSText(300,448);
         this.dpsTexts[3] = new DPSText(403,448);
         this.dpsTexts[4] = new DPSText(506,448);
         this.dpsTexts[5] = new DPSText(609,449);
         this.dpsTexts[6] = new DPSText(712,448);
         this.dpsTexts[7] = new DPSText(815,448);
      }
      
      public function Display() : void
      {
         var _loc2_:int = 0;
         var _loc3_:TotalGoldText = null;
         var _loc4_:LevelText = null;
         var _loc5_:DPSText = null;
         var _loc6_:BuyButton = null;
         var _loc7_:BuyButton = null;
         var _loc8_:BuyButton = null;
         var _loc9_:BuyButton = null;
         var _loc10_:BuyButton = null;
         var _loc11_:BuyButton = null;
         var _loc12_:BuyButton = null;
         var _loc13_:BuyButton = null;
         var _loc14_:LootSprite = null;
         this.goldText.text = this.GetCommaText(GameSystem.saveData.data.gold.toFixed(0));
         GameSystem.sta.addChild(this.classHUDSprite);
         GameSystem.sta.addChild(this.goldSprite);
         GameSystem.sta.addChild(this.goldText);
         GameSystem.sta.addChild(this.statsText);
         GameSystem.sta.addChild(this.warriorText);
         GameSystem.sta.addChild(this.mageText);
         GameSystem.sta.addChild(this.gruntText);
         GameSystem.sta.addChild(this.assassinText);
         GameSystem.sta.addChild(this.knightText);
         GameSystem.sta.addChild(this.undeadText);
         GameSystem.sta.addChild(this.cultistText);
         GameSystem.sta.addChild(this.elderText);
         GameSystem.sta.addChild(this.ratSprite);
         GameSystem.sta.addChild(this.crabSprite);
         GameSystem.sta.addChild(this.batSprite);
         GameSystem.sta.addChild(this.catSprite);
         GameSystem.sta.addChild(this.sharkSprite);
         GameSystem.sta.addChild(this.squidSprite);
         GameSystem.sta.addChild(this.frogSprite);
         GameSystem.sta.addChild(this.insectSprite);
         GameSystem.sta.addChild(this.lizardSprite);
         GameSystem.sta.addChild(this.camelSprite);
         GameSystem.sta.addChild(this.ghostSprite);
         GameSystem.sta.addChild(this.spiritSprite);
         GameSystem.sta.addChild(this.demonSprite);
         GameSystem.sta.addChild(this.demonHealthBar);
         if(GameSystem.saveData.data.fpsCounter)
         {
            GameSystem.sta.addChild(this.fpsText);
         }
         GameSystem.sta.addChild(this.equippedText);
         GameSystem.sta.addChild(this.sellText);
         this.websiteText.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForWebsiteClick);
         this.artistWebsiteText.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForArtistWebsiteClick);
         this.deleteSaveText.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForDeleteSaveClick);
         GameSystem.sta.addChild(this.websiteText);
         GameSystem.sta.addChild(this.artistWebsiteText);
         GameSystem.sta.addChild(this.deleteSaveText);
         this.fightButton.Display();
         this.killsButton.Display();
         this.shopButton.Display();
         this.lootButton.Display();
         this.statsButton.Display();
         this.achievementsButton.Display();
         var _loc1_:int = 0;
         while(_loc1_ < this.achievements.length)
         {
            this.achievements[_loc1_] = new AchievementIcon(3 + Math.floor(_loc1_ * 34 % 816),180 + Math.floor(_loc1_ / 24) * 34,_loc1_);
            _loc1_++;
         }
         _loc2_ = 0;
         while(_loc2_ < GameSystem.saveData.data.loot.length)
         {
            if(GameSystem.saveData.data.loot[_loc2_] != null && !GameSystem.saveData.data.loot[_loc2_].sold)
            {
               this.loot[_loc2_] = GameSystem.saveData.data.loot[_loc2_];
               switch(this.loot[_loc2_].code)
               {
                  case 0:
                     _loc14_ = new LootSprite(new this.warriorChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 1:
                     _loc14_ = new LootSprite(new this.warriorBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 2:
                     _loc14_ = new LootSprite(new this.mageChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 3:
                     _loc14_ = new LootSprite(new this.mageBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 4:
                     _loc14_ = new LootSprite(new this.gruntChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 5:
                     _loc14_ = new LootSprite(new this.gruntBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 6:
                     _loc14_ = new LootSprite(new this.assassinChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 7:
                     _loc14_ = new LootSprite(new this.assassinBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 8:
                     _loc14_ = new LootSprite(new this.knightChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 9:
                     _loc14_ = new LootSprite(new this.knightBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 10:
                     _loc14_ = new LootSprite(new this.undeadChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 11:
                     _loc14_ = new LootSprite(new this.undeadBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 12:
                     _loc14_ = new LootSprite(new this.cultistChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 13:
                     _loc14_ = new LootSprite(new this.cultistBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 14:
                     _loc14_ = new LootSprite(new this.elderChestClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 15:
                     _loc14_ = new LootSprite(new this.elderBagClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 16:
                     _loc14_ = new LootSprite(new this.mouseClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 17:
                     _loc14_ = new LootSprite(new this.demonSoulClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 18:
                     _loc14_ = new LootSprite(new this.potionClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
                     break;
                  case 19:
                     _loc14_ = new LootSprite(new this.spellClass(),_loc2_);
                     this.lootSprites[_loc2_] = _loc14_;
               }
               if(this.loot[_loc2_].equipped)
               {
                  equippedLoot[this.loot[_loc2_].code] = this.loot[_loc2_];
                  this.lootSprites[_loc2_].x = this.GetEquippedItemX(this.loot[_loc2_].code);
                  this.lootSprites[_loc2_].y = this.GetEquippedItemY(this.loot[_loc2_].code);
                  this.lootSprites[_loc2_].alpha = 1;
               }
               else
               {
                  this.lootSprites[_loc2_].alpha = 0;
               }
               this.lootSprites[_loc2_].addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
               GameSystem.sta.addChild(this.lootSprites[_loc2_]);
            }
            _loc2_++;
         }
         GameSystem.sta.addEventListener(Event.ENTER_FRAME,this.GetFPS);
         for each(_loc3_ in this.totalGoldTexts)
         {
            GameSystem.sta.addChild(_loc3_.textField);
         }
         for each(_loc4_ in this.levelTexts)
         {
            GameSystem.sta.addChild(_loc4_.textField);
         }
         for each(_loc5_ in this.dpsTexts)
         {
            GameSystem.sta.addChild(_loc5_.textField);
         }
         this.totalGoldTexts[0].textField.text = this.ShortenValue(GameSystem.saveData.data.totalWarriorGold);
         this.totalGoldTexts[1].textField.text = this.ShortenValue(GameSystem.saveData.data.totalMageGold);
         this.totalGoldTexts[2].textField.text = this.ShortenValue(GameSystem.saveData.data.totalGruntGold);
         this.totalGoldTexts[3].textField.text = this.ShortenValue(GameSystem.saveData.data.totalAssassinGold);
         this.totalGoldTexts[4].textField.text = this.ShortenValue(GameSystem.saveData.data.totalKnightGold);
         this.totalGoldTexts[5].textField.text = this.ShortenValue(GameSystem.saveData.data.totalUndeadGold);
         this.totalGoldTexts[6].textField.text = this.ShortenValue(GameSystem.saveData.data.totalCultistGold);
         this.totalGoldTexts[7].textField.text = this.ShortenValue(GameSystem.saveData.data.totalElderGold);
         this.levelTexts[0].textField.text = this.ShortenValue(this.levelTexts[0].UpdateTotalLevel(GameSystem.saveData.data.warriors));
         this.levelTexts[1].textField.text = this.ShortenValue(this.levelTexts[1].UpdateTotalLevel(GameSystem.saveData.data.mages));
         this.levelTexts[2].textField.text = this.ShortenValue(this.levelTexts[2].UpdateTotalLevel(GameSystem.saveData.data.grunts));
         this.levelTexts[3].textField.text = this.ShortenValue(this.levelTexts[3].UpdateTotalLevel(GameSystem.saveData.data.assassins));
         this.levelTexts[4].textField.text = this.ShortenValue(this.levelTexts[4].UpdateTotalLevel(GameSystem.saveData.data.knights));
         this.levelTexts[5].textField.text = this.ShortenValue(this.levelTexts[5].UpdateTotalLevel(GameSystem.saveData.data.undead));
         this.levelTexts[6].textField.text = this.ShortenValue(this.levelTexts[6].UpdateTotalLevel(GameSystem.saveData.data.cultists));
         this.levelTexts[7].textField.text = this.ShortenValue(this.levelTexts[7].UpdateTotalLevel(GameSystem.saveData.data.elders));
         this.dpsTexts[0].textField.text = this.ShortenValue(this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.warriors));
         this.dpsTexts[1].textField.text = this.ShortenValue(this.dpsTexts[1].UpdateTotalDPS(GameSystem.saveData.data.mages));
         this.dpsTexts[2].textField.text = this.ShortenValue(this.dpsTexts[2].UpdateTotalDPS(GameSystem.saveData.data.grunts));
         this.dpsTexts[3].textField.text = this.ShortenValue(this.dpsTexts[3].UpdateTotalDPS(GameSystem.saveData.data.assassins));
         this.dpsTexts[4].textField.text = this.ShortenValue(this.dpsTexts[4].UpdateTotalDPS(GameSystem.saveData.data.knights));
         this.dpsTexts[5].textField.text = this.ShortenValue(this.dpsTexts[5].UpdateTotalDPS(GameSystem.saveData.data.undead));
         this.dpsTexts[6].textField.text = this.ShortenValue(this.dpsTexts[6].UpdateTotalDPS(GameSystem.saveData.data.cultists));
         this.dpsTexts[7].textField.text = this.ShortenValue(this.dpsTexts[7].UpdateTotalDPS(GameSystem.saveData.data.elders));
         _loc6_ = new BuyButton(2,530);
         _loc7_ = new BuyButton(105,530);
         _loc8_ = new BuyButton(208,530);
         _loc9_ = new BuyButton(311,530);
         _loc10_ = new BuyButton(414,530);
         _loc11_ = new BuyButton(517,530);
         _loc12_ = new BuyButton(620,530);
         _loc13_ = new BuyButton(723,530);
         this.ratText = new FightText(32,188);
         this.crabText = new FightText(152,188);
         this.batText = new FightText(272,188);
         this.catText = new FightText(392,188);
         this.sharkText = new FightText(512,188);
         this.squidText = new FightText(632,188);
         this.frogText = new FightText(32,222);
         this.insectText = new FightText(152,222);
         this.lizardText = new FightText(272,222);
         this.camelText = new FightText(392,222);
         this.ghostText = new FightText(512,222);
         this.spiritText = new FightText(632,222);
         this.demonText = new FightText(400,382);
         GameSystem.sta.addChild(this.ratText.textField);
         GameSystem.sta.addChild(this.crabText.textField);
         GameSystem.sta.addChild(this.batText.textField);
         GameSystem.sta.addChild(this.catText.textField);
         GameSystem.sta.addChild(this.sharkText.textField);
         GameSystem.sta.addChild(this.squidText.textField);
         GameSystem.sta.addChild(this.frogText.textField);
         GameSystem.sta.addChild(this.insectText.textField);
         GameSystem.sta.addChild(this.lizardText.textField);
         GameSystem.sta.addChild(this.camelText.textField);
         GameSystem.sta.addChild(this.ghostText.textField);
         GameSystem.sta.addChild(this.spiritText.textField);
         GameSystem.sta.addChild(this.demonText.textField);
         GameSystem.sta.addChild(this.itemNotifications);
         GameSystem.sta.addChild(this.lootNotifications);
         GameSystem.sta.addChild(this.achievementNotifications);
         GameSystem.sta.addChild(this.mouseText);
      }
      
      public function Update() : void
      {
         var _loc9_:AchievementIcon = null;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:int = 0;
         var _loc19_:ShopIcon = null;
         var _loc20_:int = 0;
         var _loc21_:ShopIcon = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:AchievementIcon = null;
         var _loc25_:AchievementIcon = null;
         this.timeChecker++;
         this.CheckItemUnlocks();
         this.mouseText.alpha = 0;
         this.totalGoldTexts[0].textField.text = this.ShortenValue(GameSystem.saveData.data.totalWarriorGold);
         this.totalGoldTexts[1].textField.text = this.ShortenValue(GameSystem.saveData.data.totalMageGold);
         this.totalGoldTexts[2].textField.text = this.ShortenValue(GameSystem.saveData.data.totalGruntGold);
         this.totalGoldTexts[3].textField.text = this.ShortenValue(GameSystem.saveData.data.totalAssassinGold);
         this.totalGoldTexts[4].textField.text = this.ShortenValue(GameSystem.saveData.data.totalKnightGold);
         this.totalGoldTexts[5].textField.text = this.ShortenValue(GameSystem.saveData.data.totalUndeadGold);
         this.totalGoldTexts[6].textField.text = this.ShortenValue(GameSystem.saveData.data.totalCultistGold);
         this.totalGoldTexts[7].textField.text = this.ShortenValue(GameSystem.saveData.data.totalElderGold);
         this.levelTexts[0].textField.text = this.ShortenValue(this.levelTexts[0].UpdateTotalLevel(GameSystem.saveData.data.warriors));
         this.levelTexts[1].textField.text = this.ShortenValue(this.levelTexts[1].UpdateTotalLevel(GameSystem.saveData.data.mages));
         this.levelTexts[2].textField.text = this.ShortenValue(this.levelTexts[2].UpdateTotalLevel(GameSystem.saveData.data.grunts));
         this.levelTexts[3].textField.text = this.ShortenValue(this.levelTexts[3].UpdateTotalLevel(GameSystem.saveData.data.assassins));
         this.levelTexts[4].textField.text = this.ShortenValue(this.levelTexts[4].UpdateTotalLevel(GameSystem.saveData.data.knights));
         this.levelTexts[5].textField.text = this.ShortenValue(this.levelTexts[5].UpdateTotalLevel(GameSystem.saveData.data.undead));
         this.levelTexts[6].textField.text = this.ShortenValue(this.levelTexts[6].UpdateTotalLevel(GameSystem.saveData.data.cultists));
         this.levelTexts[7].textField.text = this.ShortenValue(this.levelTexts[7].UpdateTotalLevel(GameSystem.saveData.data.elders));
         this.dpsTexts[0].textField.text = this.ShortenValue(this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.warriors));
         this.dpsTexts[1].textField.text = this.ShortenValue(this.dpsTexts[1].UpdateTotalDPS(GameSystem.saveData.data.mages));
         this.dpsTexts[2].textField.text = this.ShortenValue(this.dpsTexts[2].UpdateTotalDPS(GameSystem.saveData.data.grunts));
         this.dpsTexts[3].textField.text = this.ShortenValue(this.dpsTexts[3].UpdateTotalDPS(GameSystem.saveData.data.assassins));
         this.dpsTexts[4].textField.text = this.ShortenValue(this.dpsTexts[4].UpdateTotalDPS(GameSystem.saveData.data.knights));
         this.dpsTexts[5].textField.text = this.ShortenValue(this.dpsTexts[5].UpdateTotalDPS(GameSystem.saveData.data.undead));
         this.dpsTexts[6].textField.text = this.ShortenValue(this.dpsTexts[6].UpdateTotalDPS(GameSystem.saveData.data.cultists));
         this.dpsTexts[7].textField.text = this.ShortenValue(this.dpsTexts[7].UpdateTotalDPS(GameSystem.saveData.data.elders));
         GameSystem.saveData.data.totalDPS = this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.warriors) + this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.mages) + this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.grunts) + this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.assassins) + this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.knights) + this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.undead) + this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.cultists) + this.dpsTexts[0].UpdateTotalDPS(GameSystem.saveData.data.elders);
         this.fpsText.text = "";
         if(GameSystem.saveData.data.fpsCounter)
         {
            this.fpsText.text = "FPS: " + this.fps.toFixed(0) + "\n";
         }
         if(GameSystem.saveData.data.memoryUsed)
         {
            this.fpsText.appendText("RAM: " + (System.totalMemory / 1048576).toFixed(2) + " MB\n" + "DATA: " + (GameSystem.saveData.size / 1024).toFixed(2) + " KB");
         }
         this.goldText.text = this.GetCommaText(GameSystem.saveData.data.gold.toFixed(0));
         this.warriorText.text = this.GetClassTotal(GameSystem.saveData.data.warriors.length);
         this.mageText.text = this.GetClassTotal(GameSystem.saveData.data.mages.length);
         this.gruntText.text = this.GetClassTotal(GameSystem.saveData.data.grunts.length);
         this.assassinText.text = this.GetClassTotal(GameSystem.saveData.data.assassins.length);
         this.knightText.text = this.GetClassTotal(GameSystem.saveData.data.knights.length);
         this.undeadText.text = this.GetClassTotal(GameSystem.saveData.data.undead.length);
         this.cultistText.text = this.GetClassTotal(GameSystem.saveData.data.cultists.length);
         this.elderText.text = this.GetClassTotal(GameSystem.saveData.data.elders.length);
         if(this.newItems == 0)
         {
            this.itemNotifications.alpha = 0;
         }
         else
         {
            this.itemNotifications.text = this.newItems.toString() + " new!";
            this.itemNotifications.x = 204 - this.itemNotifications.width / 2;
            this.itemNotifications.alpha = 1;
         }
         if(newAchievements == 0)
         {
            this.achievementNotifications.alpha = 0;
         }
         else
         {
            this.achievementNotifications.text = newAchievements.toString() + " new!";
            this.achievementNotifications.x = 657 - this.achievementNotifications.width / 2;
            this.achievementNotifications.alpha = 1;
         }
         if(newLoot == 0)
         {
            this.lootNotifications.alpha = 0;
         }
         else
         {
            this.lootNotifications.text = newLoot.toString() + " new!";
            this.lootNotifications.x = 315 - this.lootNotifications.width / 2;
            this.lootNotifications.alpha = 1;
         }
         if(GameSystem.sta.stage.mouseX >= 2 && GameSystem.sta.stage.mouseX <= 39 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Warrior.price).toFixed(0)) + "g\nCut: " + this.GetCutText(Warrior.rate) + "%";
         }
         if(GameSystem.sta.stage.mouseX >= 105 && GameSystem.sta.stage.mouseX <= 142 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Mage.price).toFixed(0)) + "g\nCut: " + this.GetCutText(Mage.rate) + "%";
         }
         if(GameSystem.sta.stage.mouseX >= 208 && GameSystem.sta.stage.mouseX <= 245 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Grunt.price).toFixed(0)) + "g\nCut: " + this.GetCutText(Grunt.rate) + "%";
         }
         if(GameSystem.sta.stage.mouseX >= 311 && GameSystem.sta.stage.mouseX <= 348 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Assassin.price).toFixed(0)) + "g\nCut: " + this.GetCutText(Assassin.rate) + "%";
         }
         if(GameSystem.sta.stage.mouseX >= 414 && GameSystem.sta.stage.mouseX <= 451 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Knight.price).toFixed(0)) + "g\nCut: " + this.GetCutText(Knight.rate) + "%";
         }
         if(GameSystem.sta.stage.mouseX >= 517 && GameSystem.sta.stage.mouseX <= 554 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Undead.price).toFixed(0)) + "g\nCut: 0%";
         }
         if(GameSystem.sta.stage.mouseX >= 620 && GameSystem.sta.stage.mouseX <= 657 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Cultist.price).toFixed(0)) + "g\nCut: " + this.GetCutText(Cultist.rate) + "%";
         }
         if(GameSystem.sta.stage.mouseX >= 723 && GameSystem.sta.stage.mouseX <= 760 && GameSystem.sta.stage.mouseY >= 530 && GameSystem.sta.stage.mouseY <= 547)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cost: " + this.GetCommaText(Math.round(Elder.price).toFixed(0)) + "g\nCut: " + this.GetCutText(Elder.rate) + "%";
         }
         if(GameSystem.sta.stage.mouseX >= 160 && GameSystem.sta.stage.mouseX <= 184 && GameSystem.sta.stage.mouseY >= 2 && GameSystem.sta.stage.mouseY <= 26)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Gold";
         }
         if(GameSystem.sta.stage.mouseX >= 7 && GameSystem.sta.stage.mouseX <= 27 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524 || GameSystem.sta.stage.mouseX >= 111 && GameSystem.sta.stage.mouseX <= 131 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524 || GameSystem.sta.stage.mouseX >= 213 && GameSystem.sta.stage.mouseX <= 233 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524 || GameSystem.sta.stage.mouseX >= 315 && GameSystem.sta.stage.mouseX <= 335 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524 || GameSystem.sta.stage.mouseX >= 417 && GameSystem.sta.stage.mouseX <= 437 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524 || GameSystem.sta.stage.mouseX >= 519 && GameSystem.sta.stage.mouseX <= 539 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524 || GameSystem.sta.stage.mouseX >= 621 && GameSystem.sta.stage.mouseX <= 641 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524 || GameSystem.sta.stage.mouseX >= 723 && GameSystem.sta.stage.mouseX <= 743 && GameSystem.sta.stage.mouseY >= 506 && GameSystem.sta.stage.mouseY <= 524)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Gold Given";
         }
         if(GameSystem.sta.stage.mouseX >= 7 && GameSystem.sta.stage.mouseX <= 27 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494 || GameSystem.sta.stage.mouseX >= 111 && GameSystem.sta.stage.mouseX <= 131 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494 || GameSystem.sta.stage.mouseX >= 213 && GameSystem.sta.stage.mouseX <= 233 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494 || GameSystem.sta.stage.mouseX >= 315 && GameSystem.sta.stage.mouseX <= 335 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494 || GameSystem.sta.stage.mouseX >= 417 && GameSystem.sta.stage.mouseX <= 437 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494 || GameSystem.sta.stage.mouseX >= 519 && GameSystem.sta.stage.mouseX <= 539 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494 || GameSystem.sta.stage.mouseX >= 621 && GameSystem.sta.stage.mouseX <= 641 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494 || GameSystem.sta.stage.mouseX >= 723 && GameSystem.sta.stage.mouseX <= 743 && GameSystem.sta.stage.mouseY >= 476 && GameSystem.sta.stage.mouseY <= 494)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Total Level";
         }
         if(GameSystem.sta.stage.mouseX >= 7 && GameSystem.sta.stage.mouseX <= 27 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464 || GameSystem.sta.stage.mouseX >= 111 && GameSystem.sta.stage.mouseX <= 131 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464 || GameSystem.sta.stage.mouseX >= 213 && GameSystem.sta.stage.mouseX <= 233 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464 || GameSystem.sta.stage.mouseX >= 315 && GameSystem.sta.stage.mouseX <= 335 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464 || GameSystem.sta.stage.mouseX >= 417 && GameSystem.sta.stage.mouseX <= 437 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464 || GameSystem.sta.stage.mouseX >= 519 && GameSystem.sta.stage.mouseX <= 539 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464 || GameSystem.sta.stage.mouseX >= 621 && GameSystem.sta.stage.mouseX <= 641 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464 || GameSystem.sta.stage.mouseX >= 723 && GameSystem.sta.stage.mouseX <= 743 && GameSystem.sta.stage.mouseY >= 446 && GameSystem.sta.stage.mouseY <= 464)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Total Damage\nper Second";
         }
         if(GameSystem.sta.stage.mouseX >= 2 && GameSystem.sta.stage.mouseX <= 30 && GameSystem.sta.stage.mouseY >= 188 && GameSystem.sta.stage.mouseY <= 206 && this.ratSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Rats Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.ratMinHealth.toFixed(0) + "HP to " + EnemyStats.ratMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.ratMinGold.toFixed(0) + "g to " + EnemyStats.ratMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.ratLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 122 && GameSystem.sta.stage.mouseX <= 156 && GameSystem.sta.stage.mouseY >= 188 && GameSystem.sta.stage.mouseY <= 208 && this.crabSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Crabs Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.crabMinHealth.toFixed(0) + "HP to " + EnemyStats.crabMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.crabMinGold.toFixed(0) + "g to " + EnemyStats.crabMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.crabLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 242 && GameSystem.sta.stage.mouseX <= 288 && GameSystem.sta.stage.mouseY >= 188 && GameSystem.sta.stage.mouseY <= 208 && this.batSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Bats Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.batMinHealth.toFixed(0) + "HP to " + EnemyStats.batMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.batMinGold.toFixed(0) + "g to " + EnemyStats.batMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.batLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 362 && GameSystem.sta.stage.mouseX <= 392 && GameSystem.sta.stage.mouseY >= 188 && GameSystem.sta.stage.mouseY <= 208 && this.catSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Cats Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.catMinHealth.toFixed(0) + "HP to " + EnemyStats.catMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.catMinGold.toFixed(0) + "g to " + EnemyStats.catMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.catLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 482 && GameSystem.sta.stage.mouseX <= 508 && GameSystem.sta.stage.mouseY >= 188 && GameSystem.sta.stage.mouseY <= 220 && this.sharkSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Sharks Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.sharkMinHealth.toFixed(0) + "HP to " + EnemyStats.sharkMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.sharkMinGold.toFixed(0) + "g to " + EnemyStats.sharkMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.sharkLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 602 && GameSystem.sta.stage.mouseX <= 628 && GameSystem.sta.stage.mouseY >= 188 && GameSystem.sta.stage.mouseY <= 230 && this.squidSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Squids Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.squidMinHealth.toFixed(0) + "HP to " + EnemyStats.squidMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.squidMinGold.toFixed(0) + "g to " + EnemyStats.squidMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.squidLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 2 && GameSystem.sta.stage.mouseX <= 26 && GameSystem.sta.stage.mouseY >= 222 && GameSystem.sta.stage.mouseY <= 242 && this.frogSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Frogs Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.frogMinHealth.toFixed(0) + "HP to " + EnemyStats.frogMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.frogMinGold.toFixed(0) + "g to " + EnemyStats.frogMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.frogLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 122 && GameSystem.sta.stage.mouseX <= 150 && GameSystem.sta.stage.mouseY >= 222 && GameSystem.sta.stage.mouseY <= 242 && this.insectSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Insects Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.insectMinHealth.toFixed(0) + "HP to " + EnemyStats.insectMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.insectMinGold.toFixed(0) + "g to " + EnemyStats.insectMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.insectLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 242 && GameSystem.sta.stage.mouseX <= 268 && GameSystem.sta.stage.mouseY >= 222 && GameSystem.sta.stage.mouseY <= 256 && this.lizardSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Lizards Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.lizardMinHealth.toFixed(0) + "HP to " + EnemyStats.lizardMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.lizardMinGold.toFixed(0) + "g to " + EnemyStats.lizardMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.lizardLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 362 && GameSystem.sta.stage.mouseX <= 394 && GameSystem.sta.stage.mouseY >= 222 && GameSystem.sta.stage.mouseY <= 254 && this.camelSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Camels Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.camelMinHealth.toFixed(0) + "HP to " + EnemyStats.camelMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.camelMinGold.toFixed(0) + "g to " + EnemyStats.camelMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.camelLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 482 && GameSystem.sta.stage.mouseX <= 512 && GameSystem.sta.stage.mouseY >= 222 && GameSystem.sta.stage.mouseY <= 258 && this.ghostSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Ghosts Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.ghostMinHealth.toFixed(0) + "HP to " + EnemyStats.ghostMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.ghostMinGold.toFixed(0) + "g to " + EnemyStats.ghostMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.ghostLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= 602 && GameSystem.sta.stage.mouseX <= 626 && GameSystem.sta.stage.mouseY >= 222 && GameSystem.sta.stage.mouseY <= 246 && this.spiritSprite.alpha == 1)
         {
            this.mouseText.alpha = 1;
            this.mouseText.text = "Spirits Killed";
            if(GameSystem.saveData.data.enemyHPResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.spiritMinHealth.toFixed(0) + "HP to " + EnemyStats.spiritMaxHealth.toFixed(0) + "HP");
            }
            if(GameSystem.saveData.data.enemyGoldResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.spiritMinGold.toFixed(0) + "g to " + EnemyStats.spiritMaxGold.toFixed(0) + "g");
            }
            if(GameSystem.saveData.data.enemyLootResearchItem)
            {
               this.mouseText.appendText("\n" + EnemyStats.spiritLootChance.toFixed(5) + "% Loot Chance");
            }
         }
         if(GameSystem.sta.stage.mouseX >= this.deleteSaveText.x && GameSystem.sta.stage.mouseX <= this.deleteSaveText.x + this.deleteSaveText.width && GameSystem.sta.stage.mouseY >= this.deleteSaveText.y && GameSystem.sta.stage.mouseY <= this.deleteSaveText.y + this.deleteSaveText.height && this.deleteSaveText.alpha == 1)
         {
            this.mouseText.alpha = 1;
            switch(this.deleteSaveClicks)
            {
               case 0:
                  this.mouseText.text = "Click to Delete all\nof your save data";
                  break;
               case 1:
                  this.mouseText.text = "You sure you meant\nto click that?";
                  break;
               case 2:
                  this.mouseText.text = "You can\'t undo\na save wipe";
                  break;
               case 3:
                  this.mouseText.text = "Two more click\nto delete it all";
                  break;
               case 4:
                  this.mouseText.text = "...I\'ll miss you";
            }
         }
         if(GameSystem.sta.stage.mouseX + 10 + this.mouseText.width <= 822)
         {
            this.mouseText.x = GameSystem.sta.stage.mouseX + 10;
         }
         else
         {
            this.mouseText.x = 822 - this.mouseText.width;
         }
         if(GameSystem.sta.stage.mouseY + 10 + this.mouseText.height <= 600)
         {
            this.mouseText.y = GameSystem.sta.stage.mouseY + 10;
         }
         else
         {
            this.mouseText.y = 600 - this.mouseText.height;
         }
         var _loc1_:int = 0;
         while(_loc1_ < GameSystem.saveData.data.warriors.length)
         {
            if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy == null || GameSystem.saveData.data.warriors[_loc1_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.warriors[_loc1_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.warriors[_loc1_].level);
            }
            else
            {
               GameSystem.saveData.data.warriors[_loc1_].battleTimer++;
               if(GameSystem.saveData.data.warriors[_loc1_].battleTimer % (60 - Warrior.attackSpeed * 30) == 0)
               {
                  GameSystem.saveData.data.warriors[_loc1_].currentEnemy.hp = GameSystem.saveData.data.warriors[_loc1_].currentEnemy.hp - (10 + GameSystem.saveData.data.warriors[_loc1_].level + this.GetWarriorRage(GameSystem.saveData.data.warriors[_loc1_].kills)) * this.GetDamageMultiplier(0);
               }
               if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.hp <= 0)
               {
                  _loc10_ = GameSystem.saveData.data.warriors[_loc1_].currentEnemy.goldDrop * (1 - Warrior.rate);
                  if(equippedLoot[0] != null)
                  {
                     if(equippedLoot[0].goldMultiplier > 0)
                     {
                        _loc10_ = _loc10_ * equippedLoot[0].goldMultiplier;
                     }
                  }
                  if(equippedLoot[1] != null)
                  {
                     if(equippedLoot[1].goldMultiplier > 0)
                     {
                        _loc10_ = _loc10_ * equippedLoot[1].goldMultiplier;
                     }
                  }
                  if(equippedLoot[17] != null)
                  {
                     _loc10_ = _loc10_ * HUD.equippedLoot[17].goldMultiplier;
                  }
                  _loc10_ = _loc10_ * this.GetGruntWealth();
                  _loc10_ = _loc10_ * spellBuff;
                  GameSystem.saveData.data.warriors[_loc1_].battleTimer = 0;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc10_;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc10_;
                  GameSystem.saveData.data.totalWarriorGold = GameSystem.saveData.data.totalWarriorGold + _loc10_;
                  GameSystem.saveData.data.warriors[_loc1_].xp = GameSystem.saveData.data.warriors[_loc1_].xp + GameSystem.saveData.data.warriors[_loc1_].currentEnemy.xpDrop;
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 0)
                  {
                     GameSystem.saveData.data.ratsKilled++;
                     if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 1)
                  {
                     GameSystem.saveData.data.crabsKilled++;
                     if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 2)
                  {
                     GameSystem.saveData.data.batsKilled++;
                     if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 3)
                  {
                     GameSystem.saveData.data.catsKilled++;
                     if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 4)
                  {
                     GameSystem.saveData.data.sharksKilled++;
                     if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 5)
                  {
                     GameSystem.saveData.data.squidsKilled++;
                     if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 6)
                  {
                     GameSystem.saveData.data.frogsKilled++;
                     if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 7)
                  {
                     GameSystem.saveData.data.insectsKilled++;
                     if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 8)
                  {
                     GameSystem.saveData.data.lizardsKilled++;
                     if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 9)
                  {
                     GameSystem.saveData.data.camelsKilled++;
                     if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 10)
                  {
                     GameSystem.saveData.data.ghostsKilled++;
                     if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.warriors[_loc1_].currentEnemy.enemyCode == 11)
                  {
                     GameSystem.saveData.data.spiritsKilled++;
                     if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(0) * this.GetLootChance(1))
                     {
                        this.LootDrop();
                     }
                  }
                  GameSystem.saveData.data.warriors[_loc1_].kills++;
                  if(GameSystem.saveData.data.warriors[_loc1_].xp >= GameSystem.saveData.data.warriors[_loc1_].level * 125)
                  {
                     GameSystem.saveData.data.warriors[_loc1_].xp = GameSystem.saveData.data.warriors[_loc1_].xp - GameSystem.saveData.data.warriors[_loc1_].level * 125;
                     GameSystem.saveData.data.warriors[_loc1_].level++;
                     if(GameSystem.saveData.data.warriors[_loc1_].level >= 60)
                     {
                        GameSystem.saveData.data.level60Character = true;
                     }
                  }
               }
            }
            _loc1_++;
         }
         var _loc2_:int = 0;
         while(_loc2_ < GameSystem.saveData.data.mages.length)
         {
            if(GameSystem.saveData.data.mages[_loc2_].currentEnemy == null || GameSystem.saveData.data.mages[_loc2_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.mages[_loc2_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.mages[_loc2_].level);
            }
            else
            {
               GameSystem.saveData.data.mages[_loc2_].battleTimer++;
               if(GameSystem.saveData.data.mages[_loc2_].battleTimer % (60 - Mage.attackSpeed * 30) == 0)
               {
                  GameSystem.saveData.data.mages[_loc2_].currentEnemy.hp = GameSystem.saveData.data.mages[_loc2_].currentEnemy.hp - (22 + 18 * GameSystem.saveData.data.mages[_loc2_].level) * this.GetDamageMultiplier(2);
               }
               if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.hp <= 0)
               {
                  _loc11_ = GameSystem.saveData.data.mages[_loc2_].currentEnemy.goldDrop * (1 - Mage.rate);
                  if(equippedLoot[2] != null)
                  {
                     if(equippedLoot[2].goldMultiplier > 0)
                     {
                        _loc11_ = _loc11_ * equippedLoot[2].goldMultiplier;
                     }
                  }
                  if(equippedLoot[3] != null)
                  {
                     if(equippedLoot[3].goldMultiplier > 0)
                     {
                        _loc11_ = _loc11_ * equippedLoot[3].goldMultiplier;
                     }
                  }
                  if(equippedLoot[17] != null)
                  {
                     _loc11_ = _loc11_ * HUD.equippedLoot[17].goldMultiplier;
                  }
                  _loc11_ = _loc11_ * this.GetGruntWealth();
                  _loc11_ = _loc11_ * spellBuff;
                  GameSystem.saveData.data.mages[_loc2_].battleTimer = 0;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc11_;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc11_;
                  GameSystem.saveData.data.totalMageGold = GameSystem.saveData.data.totalMageGold + _loc11_;
                  GameSystem.saveData.data.mages[_loc2_].xp = GameSystem.saveData.data.mages[_loc2_].xp + GameSystem.saveData.data.mages[_loc2_].currentEnemy.xpDrop;
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 0)
                  {
                     GameSystem.saveData.data.ratsKilled++;
                     if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 1)
                  {
                     GameSystem.saveData.data.crabsKilled++;
                     if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 2)
                  {
                     GameSystem.saveData.data.batsKilled++;
                     if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 3)
                  {
                     GameSystem.saveData.data.catsKilled++;
                     if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 4)
                  {
                     GameSystem.saveData.data.sharksKilled++;
                     if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 5)
                  {
                     GameSystem.saveData.data.squidsKilled++;
                     if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 6)
                  {
                     GameSystem.saveData.data.frogsKilled++;
                     if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 7)
                  {
                     GameSystem.saveData.data.insectsKilled++;
                     if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 8)
                  {
                     GameSystem.saveData.data.lizardsKilled++;
                     if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 9)
                  {
                     GameSystem.saveData.data.camelsKilled++;
                     if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 10)
                  {
                     GameSystem.saveData.data.ghostsKilled++;
                     if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].currentEnemy.enemyCode == 11)
                  {
                     GameSystem.saveData.data.spiritsKilled++;
                     if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(2) * this.GetLootChance(3) * this.GetMageVision())
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.mages[_loc2_].xp >= GameSystem.saveData.data.mages[_loc2_].level * 125)
                  {
                     GameSystem.saveData.data.mages[_loc2_].xp = GameSystem.saveData.data.mages[_loc2_].xp - GameSystem.saveData.data.mages[_loc2_].level * 125;
                     GameSystem.saveData.data.mages[_loc2_].level++;
                     if(GameSystem.saveData.data.mages[_loc2_].level >= 60)
                     {
                        GameSystem.saveData.data.level60Character = true;
                     }
                  }
               }
            }
            _loc2_++;
         }
         var _loc3_:int = 0;
         while(_loc3_ < GameSystem.saveData.data.grunts.length)
         {
            if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy == null || GameSystem.saveData.data.grunts[_loc3_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.grunts[_loc3_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.grunts[_loc3_].level);
            }
            else
            {
               GameSystem.saveData.data.grunts[_loc3_].battleTimer++;
               if(GameSystem.saveData.data.grunts[_loc3_].battleTimer % (60 - Grunt.attackSpeed * 30) == 0)
               {
                  GameSystem.saveData.data.grunts[_loc3_].currentEnemy.hp = GameSystem.saveData.data.grunts[_loc3_].currentEnemy.hp - (8.5 + 0.5 * GameSystem.saveData.data.grunts[_loc3_].level) * this.GetDamageMultiplier(4);
               }
               if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.hp <= 0)
               {
                  _loc12_ = GameSystem.saveData.data.grunts[_loc3_].currentEnemy.goldDrop * (1 - Grunt.rate);
                  if(equippedLoot[4] != null)
                  {
                     if(equippedLoot[4].goldMultiplier > 0)
                     {
                        _loc12_ = _loc12_ * equippedLoot[4].goldMultiplier;
                     }
                  }
                  if(equippedLoot[5] != null)
                  {
                     if(equippedLoot[5].goldMultiplier > 0)
                     {
                        _loc12_ = _loc12_ * equippedLoot[5].goldMultiplier;
                     }
                  }
                  if(equippedLoot[17] != null)
                  {
                     _loc12_ = _loc12_ * HUD.equippedLoot[17].goldMultiplier;
                  }
                  _loc12_ = _loc12_ * this.GetGruntWealth();
                  _loc12_ = _loc12_ * spellBuff;
                  GameSystem.saveData.data.grunts[_loc3_].battleTimer = 0;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc12_;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc12_;
                  GameSystem.saveData.data.totalGruntGold = GameSystem.saveData.data.totalGruntGold + _loc12_;
                  GameSystem.saveData.data.grunts[_loc3_].xp = GameSystem.saveData.data.grunts[_loc3_].xp + GameSystem.saveData.data.grunts[_loc3_].currentEnemy.xpDrop;
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 0)
                  {
                     GameSystem.saveData.data.ratsKilled++;
                     if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 1)
                  {
                     GameSystem.saveData.data.crabsKilled++;
                     if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 2)
                  {
                     GameSystem.saveData.data.batsKilled++;
                     if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 3)
                  {
                     GameSystem.saveData.data.catsKilled++;
                     if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 4)
                  {
                     GameSystem.saveData.data.sharksKilled++;
                     if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 5)
                  {
                     GameSystem.saveData.data.squidsKilled++;
                     if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 6)
                  {
                     GameSystem.saveData.data.frogsKilled++;
                     if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 7)
                  {
                     GameSystem.saveData.data.insectsKilled++;
                     if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 8)
                  {
                     GameSystem.saveData.data.lizardsKilled++;
                     if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 9)
                  {
                     GameSystem.saveData.data.camelsKilled++;
                     if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 10)
                  {
                     GameSystem.saveData.data.ghostsKilled++;
                     if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].currentEnemy.enemyCode == 11)
                  {
                     GameSystem.saveData.data.spiritsKilled++;
                     if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(4) * this.GetLootChance(5))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.grunts[_loc3_].xp >= GameSystem.saveData.data.grunts[_loc3_].level * 125)
                  {
                     GameSystem.saveData.data.grunts[_loc3_].xp = GameSystem.saveData.data.grunts[_loc3_].xp - GameSystem.saveData.data.grunts[_loc3_].level * 125;
                     GameSystem.saveData.data.grunts[_loc3_].level++;
                     if(GameSystem.saveData.data.grunts[_loc3_].level >= 60)
                     {
                        GameSystem.saveData.data.level60Character = true;
                     }
                  }
               }
            }
            _loc3_++;
         }
         var _loc4_:int = 0;
         while(_loc4_ < GameSystem.saveData.data.assassins.length)
         {
            if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy == null || GameSystem.saveData.data.assassins[_loc4_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.assassins[_loc4_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.assassins[_loc4_].level);
            }
            else
            {
               GameSystem.saveData.data.assassins[_loc4_].battleTimer++;
               if(GameSystem.saveData.data.assassins[_loc4_].battleTimer % (60 - Assassin.attackSpeed * 30) == 0)
               {
                  GameSystem.saveData.data.assassins[_loc4_].currentEnemy.hp = GameSystem.saveData.data.assassins[_loc4_].currentEnemy.hp - (10 + 10 * GameSystem.saveData.data.assassins[_loc4_].level) * this.GetDamageMultiplier(6);
                  if(this.GetAssassinDoubleStrike())
                  {
                     GameSystem.saveData.data.assassins[_loc4_].currentEnemy.hp = GameSystem.saveData.data.assassins[_loc4_].currentEnemy.hp - (10 + 10 * GameSystem.saveData.data.assassins[_loc4_].level) * this.GetDamageMultiplier(6);
                  }
               }
               if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.hp <= 0)
               {
                  _loc13_ = GameSystem.saveData.data.assassins[_loc4_].currentEnemy.goldDrop * (1 - Assassin.rate);
                  _loc13_ = _loc13_ * this.GetGruntWealth();
                  _loc13_ = _loc13_ * spellBuff;
                  if(equippedLoot[6] != null)
                  {
                     if(equippedLoot[6].goldMultiplier > 0)
                     {
                        _loc13_ = _loc13_ * equippedLoot[6].goldMultiplier;
                     }
                  }
                  if(equippedLoot[7] != null)
                  {
                     if(equippedLoot[7].goldMultiplier > 0)
                     {
                        _loc13_ = _loc13_ * equippedLoot[7].goldMultiplier;
                     }
                  }
                  if(equippedLoot[17] != null)
                  {
                     _loc13_ = _loc13_ * HUD.equippedLoot[17].goldMultiplier;
                  }
                  GameSystem.saveData.data.assassins[_loc4_].battleTimer = 0;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc13_;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc13_;
                  GameSystem.saveData.data.totalAssassinGold = GameSystem.saveData.data.totalAssassinGold + _loc13_;
                  GameSystem.saveData.data.assassins[_loc4_].xp = GameSystem.saveData.data.assassins[_loc4_].xp + GameSystem.saveData.data.assassins[_loc4_].currentEnemy.xpDrop;
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 0)
                  {
                     GameSystem.saveData.data.ratsKilled++;
                     if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 1)
                  {
                     GameSystem.saveData.data.crabsKilled++;
                     if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 2)
                  {
                     GameSystem.saveData.data.batsKilled++;
                     if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 3)
                  {
                     GameSystem.saveData.data.catsKilled++;
                     if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 4)
                  {
                     GameSystem.saveData.data.sharksKilled++;
                     if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 5)
                  {
                     GameSystem.saveData.data.squidsKilled++;
                     if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 6)
                  {
                     GameSystem.saveData.data.frogsKilled++;
                     if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 7)
                  {
                     GameSystem.saveData.data.insectsKilled++;
                     if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 8)
                  {
                     GameSystem.saveData.data.lizardsKilled++;
                     if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 9)
                  {
                     GameSystem.saveData.data.camelsKilled++;
                     if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 10)
                  {
                     GameSystem.saveData.data.ghostsKilled++;
                     if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].currentEnemy.enemyCode == 11)
                  {
                     GameSystem.saveData.data.spiritsKilled++;
                     if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(6) * this.GetLootChance(7))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.assassins[_loc4_].xp >= GameSystem.saveData.data.assassins[_loc4_].level * 125)
                  {
                     GameSystem.saveData.data.assassins[_loc4_].xp = GameSystem.saveData.data.assassins[_loc4_].xp - GameSystem.saveData.data.assassins[_loc4_].level * 125;
                     GameSystem.saveData.data.assassins[_loc4_].level++;
                     if(GameSystem.saveData.data.assassins[_loc4_].level >= 60)
                     {
                        GameSystem.saveData.data.level60Character = true;
                     }
                  }
               }
            }
            _loc4_++;
         }
         var _loc5_:int = 0;
         while(_loc5_ < GameSystem.saveData.data.knights.length)
         {
            if(GameSystem.saveData.data.knights[_loc5_].currentEnemy == null || GameSystem.saveData.data.knights[_loc5_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.knights[_loc5_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.knights[_loc5_].level);
            }
            else
            {
               GameSystem.saveData.data.knights[_loc5_].battleTimer++;
               if(GameSystem.saveData.data.knights[_loc5_].battleTimer % (60 - Knight.attackSpeed * 30) == 0)
               {
                  GameSystem.saveData.data.knights[_loc5_].currentEnemy.hp = GameSystem.saveData.data.knights[_loc5_].currentEnemy.hp - (16 + 2 * GameSystem.saveData.data.knights[_loc5_].level) * this.GetDamageMultiplier(8);
               }
               if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.hp <= 0)
               {
                  _loc14_ = (GameSystem.saveData.data.knights[_loc5_].currentEnemy.goldDrop + this.GetKnightForGlory()) * (1 - Knight.rate);
                  if(equippedLoot[8] != null)
                  {
                     if(equippedLoot[8].goldMultiplier > 0)
                     {
                        _loc14_ = _loc14_ * equippedLoot[8].goldMultiplier;
                     }
                  }
                  if(equippedLoot[9] != null)
                  {
                     if(equippedLoot[9].goldMultiplier > 0)
                     {
                        _loc14_ = _loc14_ * equippedLoot[9].goldMultiplier;
                     }
                  }
                  if(equippedLoot[17] != null)
                  {
                     _loc14_ = _loc14_ * HUD.equippedLoot[17].goldMultiplier;
                  }
                  _loc14_ = _loc14_ * this.GetGruntWealth();
                  _loc14_ = _loc14_ * spellBuff;
                  GameSystem.saveData.data.knights[_loc5_].battleTimer = 0;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc14_;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc14_;
                  GameSystem.saveData.data.totalKnightGold = GameSystem.saveData.data.totalKnightGold + _loc14_;
                  GameSystem.saveData.data.knights[_loc5_].xp = GameSystem.saveData.data.knights[_loc5_].xp + GameSystem.saveData.data.knights[_loc5_].currentEnemy.xpDrop;
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 0)
                  {
                     GameSystem.saveData.data.ratsKilled++;
                     if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 1)
                  {
                     GameSystem.saveData.data.crabsKilled++;
                     if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 2)
                  {
                     GameSystem.saveData.data.batsKilled++;
                     if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 3)
                  {
                     GameSystem.saveData.data.catsKilled++;
                     if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 4)
                  {
                     GameSystem.saveData.data.sharksKilled++;
                     if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 5)
                  {
                     GameSystem.saveData.data.squidsKilled++;
                     if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 6)
                  {
                     GameSystem.saveData.data.frogsKilled++;
                     if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 7)
                  {
                     GameSystem.saveData.data.insectsKilled++;
                     if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 8)
                  {
                     GameSystem.saveData.data.lizardsKilled++;
                     if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 9)
                  {
                     GameSystem.saveData.data.camelsKilled++;
                     if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 10)
                  {
                     GameSystem.saveData.data.ghostsKilled++;
                     if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].currentEnemy.enemyCode == 11)
                  {
                     GameSystem.saveData.data.spiritsKilled++;
                     if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(8) * this.GetLootChance(9))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.knights[_loc5_].xp >= GameSystem.saveData.data.knights[_loc5_].level * 125)
                  {
                     GameSystem.saveData.data.knights[_loc5_].xp = GameSystem.saveData.data.knights[_loc5_].xp - GameSystem.saveData.data.knights[_loc5_].level * 125;
                     GameSystem.saveData.data.knights[_loc5_].level++;
                     if(GameSystem.saveData.data.knights[_loc5_].level >= 60)
                     {
                        GameSystem.saveData.data.level60Character = true;
                     }
                  }
               }
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < GameSystem.saveData.data.undead.length)
         {
            if(GameSystem.saveData.data.undead[_loc6_].currentEnemy == null || GameSystem.saveData.data.undead[_loc6_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.undead[_loc6_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.undead[_loc6_].level);
            }
            else
            {
               GameSystem.saveData.data.undead[_loc6_].battleTimer++;
               if(GameSystem.saveData.data.mapToHell && GameSystem.saveData.data.demon.hp > 0)
               {
                  if(GameSystem.saveData.data.undead[_loc6_].battleTimer % (60 - Undead.attackSpeed * 30) == 0)
                  {
                     GameSystem.saveData.data.demon.hp = GameSystem.saveData.data.demon.hp - (8 + 1 * GameSystem.saveData.data.undead[_loc6_].level) * this.GetDamageMultiplier(10);
                  }
                  if(GameSystem.saveData.data.demon.hp <= 0)
                  {
                     GameSystem.saveData.data.demon.hp = 0;
                     _loc15_ = 6666666 * (1 - Undead.rate) / GameSystem.saveData.data.undead.length;
                     if(equippedLoot[10] != null)
                     {
                        if(equippedLoot[10].goldMultiplier > 0)
                        {
                           _loc15_ = _loc15_ * equippedLoot[10].goldMultiplier;
                        }
                     }
                     if(equippedLoot[11] != null)
                     {
                        if(equippedLoot[11].goldMultiplier > 0)
                        {
                           _loc15_ = _loc15_ * equippedLoot[11].goldMultiplier;
                        }
                     }
                     if(equippedLoot[17] != null)
                     {
                        _loc15_ = _loc15_ * HUD.equippedLoot[17].goldMultiplier;
                     }
                     _loc15_ = _loc15_ * this.GetGruntWealth();
                     _loc15_ = _loc15_ * spellBuff;
                     GameSystem.saveData.data.undead[_loc6_].battleTimer = 0;
                     GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc15_;
                     GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc15_;
                     GameSystem.saveData.data.totalUndeadGold = GameSystem.saveData.data.totalUndeadGold + _loc15_;
                     if(this.GetUndeadRevive())
                     {
                        GameSystem.saveData.data.undead.push(new Undead());
                        Undead.price = 66 * Math.pow(1.1505,GameSystem.saveData.data.undead.length);
                     }
                     GameSystem.saveData.data.undead[_loc6_].xp = GameSystem.saveData.data.undead[_loc6_].xp + 666;
                     this.DemonLootDrop();
                     if(GameSystem.saveData.data.undead[_loc6_].xp >= GameSystem.saveData.data.undead[_loc6_].level * 125)
                     {
                        GameSystem.saveData.data.undead[_loc6_].xp = GameSystem.saveData.data.undead[_loc6_].xp - GameSystem.saveData.data.undead[_loc6_].level * 125;
                        GameSystem.saveData.data.undead[_loc6_].level++;
                        if(GameSystem.saveData.data.undead[_loc6_].level >= 60)
                        {
                           GameSystem.saveData.data.level60Character = true;
                        }
                     }
                     GameSystem.saveData.data.undead[_loc6_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.undead[_loc6_].level);
                  }
               }
               else
               {
                  if(GameSystem.saveData.data.undead[_loc6_].battleTimer % (60 - Undead.attackSpeed * 30) == 0)
                  {
                     GameSystem.saveData.data.undead[_loc6_].currentEnemy.hp = GameSystem.saveData.data.undead[_loc6_].currentEnemy.hp - (8 + 1 * GameSystem.saveData.data.undead[_loc6_].level) * this.GetDamageMultiplier(10);
                  }
                  if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.hp <= 0)
                  {
                     _loc15_ = GameSystem.saveData.data.undead[_loc6_].currentEnemy.goldDrop * (1 - Undead.rate);
                     if(equippedLoot[10] != null)
                     {
                        if(equippedLoot[10].goldMultiplier > 0)
                        {
                           _loc15_ = _loc15_ * equippedLoot[10].goldMultiplier;
                        }
                     }
                     if(equippedLoot[11] != null)
                     {
                        if(equippedLoot[11].goldMultiplier > 0)
                        {
                           _loc15_ = _loc15_ * equippedLoot[11].goldMultiplier;
                        }
                     }
                     if(equippedLoot[17] != null)
                     {
                        _loc15_ = _loc15_ * HUD.equippedLoot[17].goldMultiplier;
                     }
                     _loc15_ = _loc15_ * this.GetGruntWealth();
                     GameSystem.saveData.data.undead[_loc6_].battleTimer = 0;
                     GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc15_;
                     GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc15_;
                     GameSystem.saveData.data.totalUndeadGold = GameSystem.saveData.data.totalUndeadGold + _loc15_;
                     if(this.GetUndeadRevive())
                     {
                        GameSystem.saveData.data.undead.push(new Undead());
                        Undead.price = 66 * Math.pow(1.1505,GameSystem.saveData.data.undead.length);
                     }
                     GameSystem.saveData.data.undead[_loc6_].xp = GameSystem.saveData.data.undead[_loc6_].xp + GameSystem.saveData.data.undead[_loc6_].currentEnemy.xpDrop;
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 0)
                     {
                        GameSystem.saveData.data.ratsKilled++;
                        if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 1)
                     {
                        GameSystem.saveData.data.crabsKilled++;
                        if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 2)
                     {
                        GameSystem.saveData.data.batsKilled++;
                        if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 3)
                     {
                        GameSystem.saveData.data.catsKilled++;
                        if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 4)
                     {
                        GameSystem.saveData.data.sharksKilled++;
                        if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 5)
                     {
                        GameSystem.saveData.data.squidsKilled++;
                        if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 6)
                     {
                        GameSystem.saveData.data.frogsKilled++;
                        if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 7)
                     {
                        GameSystem.saveData.data.insectsKilled++;
                        if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 8)
                     {
                        GameSystem.saveData.data.lizardsKilled++;
                        if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 9)
                     {
                        GameSystem.saveData.data.camelsKilled++;
                        if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 10)
                     {
                        GameSystem.saveData.data.ghostsKilled++;
                        if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].currentEnemy.enemyCode == 11)
                     {
                        GameSystem.saveData.data.spiritsKilled++;
                        if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(10) * this.GetLootChance(11))
                        {
                           this.LootDrop();
                        }
                     }
                     if(GameSystem.saveData.data.undead[_loc6_].xp >= GameSystem.saveData.data.undead[_loc6_].level * 125)
                     {
                        GameSystem.saveData.data.undead[_loc6_].xp = GameSystem.saveData.data.undead[_loc6_].xp - GameSystem.saveData.data.undead[_loc6_].level * 125;
                        GameSystem.saveData.data.undead[_loc6_].level++;
                        if(GameSystem.saveData.data.undead[_loc6_].level >= 60)
                        {
                           GameSystem.saveData.data.level60Character = true;
                        }
                     }
                  }
               }
            }
            _loc6_++;
         }
         var _loc7_:int = 0;
         while(_loc7_ < GameSystem.saveData.data.cultists.length)
         {
            if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy == null || GameSystem.saveData.data.cultists[_loc7_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.cultists[_loc7_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.cultists[_loc7_].level);
            }
            else
            {
               GameSystem.saveData.data.cultists[_loc7_].battleTimer++;
               if(GameSystem.saveData.data.cultists[_loc7_].battleTimer % (60 - Cultist.attackSpeed * 30) == 0)
               {
                  GameSystem.saveData.data.cultists[_loc7_].currentEnemy.hp = GameSystem.saveData.data.cultists[_loc7_].currentEnemy.hp - (10 + (GameSystem.saveData.data.cultists.length - 1) + 1.2 * GameSystem.saveData.data.cultists[_loc7_].level) * this.GetDamageMultiplier(12) * this.GetCultistOverMind();
               }
               if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.hp <= 0)
               {
                  _loc16_ = GameSystem.saveData.data.cultists[_loc7_].currentEnemy.goldDrop * (1 - Cultist.rate);
                  _loc16_ = _loc16_ * this.GetGruntWealth();
                  _loc16_ = _loc16_ * spellBuff;
                  if(equippedLoot[12] != null)
                  {
                     if(equippedLoot[12].goldMultiplier > 0)
                     {
                        _loc16_ = _loc16_ * equippedLoot[12].goldMultiplier;
                     }
                  }
                  if(equippedLoot[13] != null)
                  {
                     if(equippedLoot[13].goldMultiplier > 0)
                     {
                        _loc16_ = _loc16_ * equippedLoot[13].goldMultiplier;
                     }
                  }
                  if(equippedLoot[17] != null)
                  {
                     _loc16_ = _loc16_ * HUD.equippedLoot[17].goldMultiplier;
                  }
                  GameSystem.saveData.data.cultists[_loc7_].battleTimer = 0;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc16_;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc16_;
                  GameSystem.saveData.data.totalCultistGold = GameSystem.saveData.data.totalCultistGold + _loc16_;
                  GameSystem.saveData.data.cultists[_loc7_].xp = GameSystem.saveData.data.cultists[_loc7_].xp + GameSystem.saveData.data.cultists[_loc7_].currentEnemy.xpDrop;
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 0)
                  {
                     GameSystem.saveData.data.ratsKilled++;
                     if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 1)
                  {
                     GameSystem.saveData.data.crabsKilled++;
                     if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 2)
                  {
                     GameSystem.saveData.data.batsKilled++;
                     if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 3)
                  {
                     GameSystem.saveData.data.catsKilled++;
                     if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 4)
                  {
                     GameSystem.saveData.data.sharksKilled++;
                     if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 5)
                  {
                     GameSystem.saveData.data.squidsKilled++;
                     if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 6)
                  {
                     GameSystem.saveData.data.frogsKilled++;
                     if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 7)
                  {
                     GameSystem.saveData.data.insectsKilled++;
                     if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 8)
                  {
                     GameSystem.saveData.data.lizardsKilled++;
                     if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 9)
                  {
                     GameSystem.saveData.data.camelsKilled++;
                     if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 10)
                  {
                     GameSystem.saveData.data.ghostsKilled++;
                     if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].currentEnemy.enemyCode == 11)
                  {
                     GameSystem.saveData.data.spiritsKilled++;
                     if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(12) * this.GetLootChance(13))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.cultists[_loc7_].xp >= GameSystem.saveData.data.cultists[_loc7_].level * 125)
                  {
                     GameSystem.saveData.data.cultists[_loc7_].xp = GameSystem.saveData.data.cultists[_loc7_].xp - GameSystem.saveData.data.cultists[_loc7_].level * 125;
                     GameSystem.saveData.data.cultists[_loc7_].level++;
                     if(GameSystem.saveData.data.cultists[_loc7_].level >= 60)
                     {
                        GameSystem.saveData.data.level60Character = true;
                     }
                  }
               }
            }
            _loc7_++;
         }
         var _loc8_:int = 0;
         while(_loc8_ < GameSystem.saveData.data.elders.length)
         {
            if(GameSystem.saveData.data.elders[_loc8_].currentEnemy == null || GameSystem.saveData.data.elders[_loc8_].currentEnemy.hp <= 0)
            {
               GameSystem.saveData.data.elders[_loc8_].currentEnemy = Unit.ChooseEnemy(GameSystem.saveData.data.elders[_loc8_].level);
            }
            else
            {
               GameSystem.saveData.data.elders[_loc8_].battleTimer++;
               if(GameSystem.saveData.data.elders[_loc8_].battleTimer % (60 - Elder.attackSpeed * 30) == 0)
               {
                  GameSystem.saveData.data.elders[_loc8_].currentEnemy.hp = GameSystem.saveData.data.elders[_loc8_].currentEnemy.hp - (65 + 10 * GameSystem.saveData.data.elders[_loc8_].level) * this.GetDamageMultiplier(14) * this.GetElderRespectThem();
               }
               if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.hp <= 0)
               {
                  _loc17_ = GameSystem.saveData.data.elders[_loc8_].currentEnemy.goldDrop * (1 - Elder.rate);
                  _loc17_ = _loc17_ * this.GetGruntWealth();
                  _loc17_ = _loc17_ * spellBuff;
                  if(equippedLoot[14] != null)
                  {
                     if(equippedLoot[14].goldMultiplier > 0)
                     {
                        _loc17_ = _loc17_ * equippedLoot[14].goldMultiplier;
                     }
                  }
                  if(equippedLoot[15] != null)
                  {
                     if(equippedLoot[15].goldMultiplier > 0)
                     {
                        _loc17_ = _loc17_ * equippedLoot[15].goldMultiplier;
                     }
                  }
                  if(equippedLoot[17] != null)
                  {
                     _loc17_ = _loc17_ * HUD.equippedLoot[17].goldMultiplier;
                  }
                  GameSystem.saveData.data.elders[_loc8_].battleTimer = 0;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc17_;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc17_;
                  GameSystem.saveData.data.totalElderGold = GameSystem.saveData.data.totalElderGold + _loc17_;
                  GameSystem.saveData.data.elders[_loc8_].xp = GameSystem.saveData.data.elders[_loc8_].xp + GameSystem.saveData.data.elders[_loc8_].currentEnemy.xpDrop;
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 0)
                  {
                     GameSystem.saveData.data.ratsKilled++;
                     if(Math.random() <= EnemyStats.ratLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 1)
                  {
                     GameSystem.saveData.data.crabsKilled++;
                     if(Math.random() <= EnemyStats.crabLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 2)
                  {
                     GameSystem.saveData.data.batsKilled++;
                     if(Math.random() <= EnemyStats.batLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 3)
                  {
                     GameSystem.saveData.data.catsKilled++;
                     if(Math.random() <= EnemyStats.catLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 4)
                  {
                     GameSystem.saveData.data.sharksKilled++;
                     if(Math.random() <= EnemyStats.sharkLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 5)
                  {
                     GameSystem.saveData.data.squidsKilled++;
                     if(Math.random() <= EnemyStats.squidLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 6)
                  {
                     GameSystem.saveData.data.frogsKilled++;
                     if(Math.random() <= EnemyStats.frogLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 7)
                  {
                     GameSystem.saveData.data.insectsKilled++;
                     if(Math.random() <= EnemyStats.insectLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 8)
                  {
                     GameSystem.saveData.data.lizardsKilled++;
                     if(Math.random() <= EnemyStats.lizardLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 9)
                  {
                     GameSystem.saveData.data.camelsKilled++;
                     if(Math.random() <= EnemyStats.camelLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 10)
                  {
                     GameSystem.saveData.data.ghostsKilled++;
                     if(Math.random() <= EnemyStats.ghostLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].currentEnemy.enemyCode == 11)
                  {
                     GameSystem.saveData.data.spiritsKilled++;
                     if(Math.random() <= EnemyStats.spiritLootChance * this.GetLootChance(14) * this.GetLootChance(15))
                     {
                        this.LootDrop();
                     }
                  }
                  if(GameSystem.saveData.data.elders[_loc8_].xp >= GameSystem.saveData.data.elders[_loc8_].level * 125)
                  {
                     GameSystem.saveData.data.elders[_loc8_].xp = GameSystem.saveData.data.elders[_loc8_].xp - GameSystem.saveData.data.elders[_loc8_].level * 125;
                     GameSystem.saveData.data.elders[_loc8_].level++;
                     if(GameSystem.saveData.data.elders[_loc8_].level >= 60)
                     {
                        GameSystem.saveData.data.level60Character = true;
                     }
                  }
               }
            }
            _loc8_++;
         }
         for each(_loc9_ in this.achievements)
         {
            _loc9_.CheckIfUnlocked();
         }
         if(this.timeChecker % 15 == 0)
         {
         }
         if(this.timeChecker % 30 == 0)
         {
            if(GameSystem.saveData.data.achievements >= 5)
            {
               API.unlockMedal("5 Achievements");
            }
            if(GameSystem.saveData.data.achievements >= 10)
            {
               API.unlockMedal("10 Achievements");
            }
            if(GameSystem.saveData.data.achievements >= 25)
            {
               API.unlockMedal("25 Achievements");
            }
            if(GameSystem.saveData.data.achievements >= 50)
            {
               API.unlockMedal("50 Achievements");
            }
            if(GameSystem.saveData.data.achievements >= 89)
            {
               API.unlockMedal("89 Achievements");
            }
            GameSystem.saveData.data.secondsPlayed++;
            GameSystem.saveData.data.clickTimer++;
         }
         if(this.timeChecker % 1800 == 0)
         {
            if(GameSystem.saveData.data.lootFinder)
            {
               this.LootDrop();
            }
            GameSystem.saveData.flush();
         }
         EnemyStats.UpdateEnemyStats();
         this.CheckPotions();
         this.CheckSpells();
         if(GameSystem.killsMenu)
         {
            this.deleteSaveClicks = 0;
            if(GameSystem.saveData.data.ratsKilled > 0 && this.ratSprite.alpha != 1)
            {
               this.ratSprite.alpha = 1;
               this.ratText.textField.alpha = 1;
            }
            if(this.ratSprite.alpha == 1)
            {
               this.ratText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.ratsKilled);
            }
            if(GameSystem.saveData.data.crabsKilled > 0 && this.crabSprite.alpha != 1)
            {
               this.crabSprite.alpha = 1;
               this.crabText.textField.alpha = 1;
            }
            if(this.crabSprite.alpha == 1)
            {
               this.crabText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.crabsKilled);
            }
            if(GameSystem.saveData.data.batsKilled > 0 && this.batSprite.alpha != 1)
            {
               this.batSprite.alpha = 1;
               this.batText.textField.alpha = 1;
            }
            if(this.batSprite.alpha == 1)
            {
               this.batText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.batsKilled);
            }
            if(GameSystem.saveData.data.catsKilled > 0 && this.catSprite.alpha != 1)
            {
               this.catSprite.alpha = 1;
               this.catText.textField.alpha = 1;
            }
            if(this.catSprite.alpha == 1)
            {
               this.catText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.catsKilled);
            }
            if(GameSystem.saveData.data.sharksKilled > 0 && this.sharkSprite.alpha != 1)
            {
               this.sharkSprite.alpha = 1;
               this.sharkText.textField.alpha = 1;
            }
            if(this.sharkSprite.alpha == 1)
            {
               this.sharkText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.sharksKilled);
            }
            if(GameSystem.saveData.data.squidsKilled > 0 && this.squidSprite.alpha != 1)
            {
               this.squidSprite.alpha = 1;
               this.squidText.textField.alpha = 1;
            }
            if(this.squidSprite.alpha == 1)
            {
               this.squidText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.squidsKilled);
            }
            if(GameSystem.saveData.data.frogsKilled > 0 && this.frogSprite.alpha != 1)
            {
               this.frogSprite.alpha = 1;
               this.frogText.textField.alpha = 1;
            }
            if(this.frogSprite.alpha == 1)
            {
               this.frogText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.frogsKilled);
            }
            if(GameSystem.saveData.data.insectsKilled > 0 && this.insectSprite.alpha != 1)
            {
               this.insectSprite.alpha = 1;
               this.insectText.textField.alpha = 1;
            }
            if(this.insectSprite.alpha == 1)
            {
               this.insectText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.insectsKilled);
            }
            if(GameSystem.saveData.data.lizardsKilled > 0 && this.lizardSprite.alpha != 1)
            {
               this.lizardSprite.alpha = 1;
               this.lizardText.textField.alpha = 1;
            }
            if(this.lizardSprite.alpha == 1)
            {
               this.lizardText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.lizardsKilled);
            }
            if(GameSystem.saveData.data.camelsKilled > 0 && this.camelSprite.alpha != 1)
            {
               this.camelSprite.alpha = 1;
               this.camelText.textField.alpha = 1;
            }
            if(this.camelSprite.alpha == 1)
            {
               this.camelText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.camelsKilled);
            }
            if(GameSystem.saveData.data.ghostsKilled > 0 && this.ghostSprite.alpha != 1)
            {
               this.ghostSprite.alpha = 1;
               this.ghostText.textField.alpha = 1;
            }
            if(this.ghostSprite.alpha == 1)
            {
               this.ghostText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.ghostsKilled);
            }
            if(GameSystem.saveData.data.spiritsKilled > 0 && this.spiritSprite.alpha != 1)
            {
               this.spiritSprite.alpha = 1;
               this.spiritText.textField.alpha = 1;
            }
            if(this.spiritSprite.alpha == 1)
            {
               this.spiritText.textField.text = "x" + this.ShortenValue(GameSystem.saveData.data.spiritsKilled);
            }
            if(GameSystem.saveData.data.mapToHell && this.demonSprite.alpha != 1 && GameSystem.saveData.data.demon.hp > 0)
            {
               this.demonSprite.alpha = 1;
               this.demonHealthBar.alpha = 1;
               this.demonText.textField.alpha = 1;
            }
            if(this.demonSprite.alpha == 1)
            {
               this.demonText.textField.text = this.GetCommaText(GameSystem.saveData.data.demon.hp.toFixed(0)) + "/" + this.GetCommaText(6666666.toFixed(0));
               this.demonText.textField.x = 400 - this.demonText.textField.width / 2;
               this.demonHealthBar.width = 798 * (GameSystem.saveData.data.demon.hp / 6666666);
            }
            this.killsButton.ChangeAlpha(1);
         }
         else
         {
            this.ratSprite.alpha = 0;
            this.ratText.textField.alpha = 0;
            this.crabSprite.alpha = 0;
            this.crabText.textField.alpha = 0;
            this.batSprite.alpha = 0;
            this.batText.textField.alpha = 0;
            this.catSprite.alpha = 0;
            this.catText.textField.alpha = 0;
            this.sharkSprite.alpha = 0;
            this.sharkText.textField.alpha = 0;
            this.squidSprite.alpha = 0;
            this.squidText.textField.alpha = 0;
            this.frogSprite.alpha = 0;
            this.frogText.textField.alpha = 0;
            this.insectSprite.alpha = 0;
            this.insectText.textField.alpha = 0;
            this.lizardSprite.alpha = 0;
            this.lizardText.textField.alpha = 0;
            this.camelSprite.alpha = 0;
            this.camelText.textField.alpha = 0;
            this.ghostSprite.alpha = 0;
            this.ghostText.textField.alpha = 0;
            this.spiritSprite.alpha = 0;
            this.spiritText.textField.alpha = 0;
            this.demonSprite.alpha = 0;
            this.demonText.textField.alpha = 0;
            this.demonHealthBar.alpha = 0;
            this.killsButton.ChangeAlpha(0.33);
         }
         if(GameSystem.shopMenu)
         {
            this.deleteSaveClicks = 0;
            this.newItems = 0;
            this.lootSoldOrEquipped = 0;
            this.sellText.alpha = 1;
            GameSystem.sta.removeChild(this.mouseText);
            GameSystem.sta.addChild(this.mouseText);
            this.shopButton.ChangeAlpha(1);
            _loc18_ = 0;
            for each(_loc19_ in this.items)
            {
               if(this.items[_loc19_.itemCode].stock != 0)
               {
                  this.items[_loc19_.itemCode].ChangeAlpha(1);
                  this.items[_loc19_.itemCode].Rearrange(3 + Math.floor(_loc18_ * 34 % 816),180 + Math.floor(_loc18_ / 24) * 34);
               }
               else
               {
                  this.items[_loc19_.itemCode].Rearrange(1000,1000);
               }
               if(GameSystem.sta.stage.mouseX >= 3 + Math.floor(_loc18_ * 34 % 816) && GameSystem.sta.stage.mouseX <= 3 + Math.floor(_loc18_ * 34 % 816) + 34 && GameSystem.sta.stage.mouseY >= 180 + Math.floor(_loc18_ / 24) * 34 && GameSystem.sta.stage.mouseY <= 180 + Math.floor(_loc18_ / 24) * 34 + 34 && this.items[_loc19_.itemCode].GetAlpha() == 1)
               {
                  this.mouseText.alpha = 1;
                  this.mouseText.text = this.items[_loc19_.itemCode].description;
               }
               if(this.items[_loc19_.itemCode].GetAlpha() == 1)
               {
                  _loc18_++;
               }
            }
            _loc20_ = 0;
            while(_loc20_ < this.loot.length)
            {
               while(this.loot[_loc20_] == null && _loc20_ <= this.loot.length)
               {
                  _loc20_++;
                  this.lootSoldOrEquipped++;
               }
               if(_loc20_ < 96 + this.lootSoldOrEquipped && _loc20_ < this.loot.length)
               {
                  if(this.lootSprites[_loc20_].alpha != 1 && !this.loot[_loc20_].equipped && !this.loot[_loc20_].sold)
                  {
                     this.lootSprites[_loc20_].alpha = 1;
                  }
                  if(!this.loot[_loc20_].equipped)
                  {
                     if(!this.loot[_loc20_].sold)
                     {
                        this.lootSprites[_loc20_].x = 3 + Math.floor((_loc20_ - this.lootSoldOrEquipped) * 34 % 816);
                        this.lootSprites[_loc20_].y = 282 + Math.floor((_loc20_ - this.lootSoldOrEquipped) / 24) * 34;
                     }
                     if(GameSystem.sta.stage.mouseX >= 3 + Math.floor((_loc20_ - this.lootSoldOrEquipped) * 34 % 816) && GameSystem.sta.stage.mouseX <= 3 + Math.floor((_loc20_ - this.lootSoldOrEquipped) * 34 % 816) + 34 && GameSystem.sta.stage.mouseY >= 282 + Math.floor((_loc20_ - this.lootSoldOrEquipped) / 24) * 34 && GameSystem.sta.stage.mouseY <= 282 + Math.floor((_loc20_ - this.lootSoldOrEquipped) / 24) * 34 + 34 && this.lootSprites[_loc20_].alpha == 1)
                     {
                        this.mouseText.alpha = 1;
                        if(GameSystem.saveData.data.valueIncreaser)
                        {
                           this.mouseText.text = "(Sell for " + (this.loot[_loc20_].price * 1.1).toFixed(0) + "g?)\n" + this.loot[_loc20_].description;
                        }
                        else
                        {
                           this.mouseText.text = "(Sell for " + this.loot[_loc20_].price.toFixed(0) + "g?)\n" + this.loot[_loc20_].description;
                        }
                     }
                  }
                  else
                  {
                     this.lootSoldOrEquipped++;
                  }
                  GameSystem.sta.removeChild(this.mouseText);
                  GameSystem.sta.addChild(this.mouseText);
               }
               _loc20_++;
            }
         }
         else
         {
            this.shopButton.ChangeAlpha(0.33);
            this.sellText.alpha = 0;
            for each(_loc21_ in this.items)
            {
               _loc21_.ChangeAlpha(0);
            }
            if(!GameSystem.lootMenu)
            {
               _loc20_ = 0;
               while(_loc20_ < this.loot.length)
               {
                  while(this.loot[_loc20_] == null && _loc20_ <= this.loot.length)
                  {
                     _loc20_++;
                  }
                  if(_loc20_ < 96 && _loc20_ < this.loot.length)
                  {
                     if(!this.loot[_loc20_].equipped && !this.loot[_loc20_].sold)
                     {
                        this.lootSprites[_loc20_].alpha = 0;
                     }
                  }
                  _loc20_++;
               }
            }
         }
         if(GameSystem.lootMenu)
         {
            this.deleteSaveClicks = 0;
            newLoot = 0;
            this.lootButton.ChangeAlpha(1);
            this.lootSoldOrEquipped = 0;
            _loc20_ = 0;
            while(_loc20_ < this.loot.length)
            {
               while(this.loot[_loc20_] == null && _loc20_ <= this.loot.length)
               {
                  _loc20_++;
                  this.lootSoldOrEquipped++;
               }
               if(_loc20_ < 168 + this.lootSoldOrEquipped && _loc20_ < this.loot.length)
               {
                  if(this.lootSprites[_loc20_].alpha != 1 && !this.loot[_loc20_].equipped && !this.loot[_loc20_].sold)
                  {
                     this.lootSprites[_loc20_].alpha = 1;
                  }
                  if(!this.loot[_loc20_].equipped)
                  {
                     this.lootSprites[_loc20_].x = 3 + Math.floor((_loc20_ - this.lootSoldOrEquipped) * 34 % 816);
                     this.lootSprites[_loc20_].y = 180 + Math.floor((_loc20_ - this.lootSoldOrEquipped) / 24) * 34;
                     if(GameSystem.sta.stage.mouseX >= 3 + Math.floor((_loc20_ - this.lootSoldOrEquipped) * 34 % 816) && GameSystem.sta.stage.mouseX <= 3 + Math.floor((_loc20_ - this.lootSoldOrEquipped) * 34 % 816) + 34 && GameSystem.sta.stage.mouseY >= 180 + Math.floor((_loc20_ - this.lootSoldOrEquipped) / 24) * 34 && GameSystem.sta.stage.mouseY <= 180 + Math.floor((_loc20_ - this.lootSoldOrEquipped) / 24) * 34 + 34 && this.lootSprites[_loc20_].alpha == 1 && this.loot[_loc20_] != null)
                     {
                        this.mouseText.alpha = 1;
                        this.mouseText.text = this.loot[_loc20_].description;
                     }
                  }
                  else if(this.loot[_loc20_].equipped)
                  {
                     this.equippedText.alpha = 1;
                     this.lootSprites[_loc20_].x = this.GetEquippedItemX(this.loot[_loc20_].code);
                     this.lootSprites[_loc20_].y = this.GetEquippedItemY(this.loot[_loc20_].code);
                     this.lootSoldOrEquipped++;
                     if(GameSystem.sta.stage.mouseX >= this.lootSprites[_loc20_].x && GameSystem.sta.stage.mouseX < this.lootSprites[_loc20_].x + 34 && GameSystem.sta.stage.mouseY >= this.lootSprites[_loc20_].y && GameSystem.sta.stage.mouseY < this.lootSprites[_loc20_].y + 34)
                     {
                        this.mouseText.alpha = 1;
                        this.mouseText.text = this.loot[_loc20_].description;
                     }
                  }
                  GameSystem.sta.removeChild(this.mouseText);
                  GameSystem.sta.addChild(this.mouseText);
               }
               _loc20_++;
            }
         }
         else
         {
            this.lootButton.ChangeAlpha(0.33);
            _loc22_ = 0;
            while(_loc22_ < this.loot.length)
            {
               while(this.loot[_loc22_] == null && _loc22_ <= this.loot.length)
               {
                  _loc22_++;
               }
               if(_loc22_ < this.loot.length)
               {
                  if(!this.loot[_loc22_].equipped && !this.loot[_loc22_].sold)
                  {
                     if(!GameSystem.shopMenu)
                     {
                        this.lootSprites[_loc22_].alpha = 0;
                     }
                  }
                  else if(this.loot[_loc22_].equipped)
                  {
                     if(GameSystem.sta.stage.mouseX >= this.lootSprites[_loc22_].x && GameSystem.sta.stage.mouseX < this.lootSprites[_loc22_].x + 34 && GameSystem.sta.stage.mouseY >= this.lootSprites[_loc22_].y && GameSystem.sta.stage.mouseY < this.lootSprites[_loc22_].y + 34)
                     {
                        this.mouseText.alpha = 1;
                        this.mouseText.text = this.loot[_loc22_].description;
                        break;
                     }
                  }
               }
               _loc22_++;
            }
         }
         if(GameSystem.statsMenu)
         {
            this.deleteSaveText.alpha = 1;
            this.statsButton.ChangeAlpha(1);
            this.statsText.alpha = 1;
            this.statsText.text = "\nTime Played: " + this.GetTimeText(GameSystem.saveData.data.secondsPlayed) + "\nLifetime Gold: " + this.GetCommaText(GameSystem.saveData.data.lifetimeGold.toFixed(0)) + "\nTotal DPS: " + this.GetCommaText(GameSystem.saveData.data.totalDPS.toFixed(0)) + "\nEnemies Killed: " + this.GetCommaText(this.GetEnemiesKilled().toFixed(0)) + "\nGold from Farming: " + this.GetCommaText(GameSystem.saveData.data.goldFromFarming.toFixed(0)) + "\nClicks: " + this.GetCommaText(GameSystem.saveData.data.clicks.toFixed(0)) + "\nLoot Found: " + this.GetCommaText(GameSystem.saveData.data.lootFound.toFixed(0)) + "\nLoot Sold: " + this.GetCommaText(GameSystem.saveData.data.lootSold.toFixed(0)) + "\nUnits Bought: " + this.GetCommaText(this.GetTotalUnits().toFixed(0)) + "\nItems Bought: " + this.GetTotalItems().toString() + "/24" + "\nAchievements: " + GameSystem.saveData.data.achievements.toString() + "/89" + "\nPotions Used: " + GameSystem.saveData.data.potionsUsed.toString() + "\nSpells Used: " + GameSystem.saveData.data.spellsUsed.toString();
         }
         else
         {
            this.statsButton.ChangeAlpha(0.33);
            this.statsText.alpha = 0;
            this.deleteSaveText.alpha = 0;
            if(!GameSystem.shopMenu)
            {
               for each(_loc19_ in this.items)
               {
                  if(this.items[_loc19_.itemCode].stock == 0)
                  {
                     this.items[_loc19_.itemCode].ChangeAlpha(0);
                  }
               }
            }
         }
         if(GameSystem.achievementsMenu)
         {
            this.deleteSaveClicks = 0;
            newAchievements = 0;
            _loc23_ = 0;
            this.achievementsButton.ChangeAlpha(1);
            for each(_loc24_ in this.achievements)
            {
               _loc24_.ChangeAlpha(1);
               if(GameSystem.sta.stage.mouseX >= 3 + Math.floor(_loc23_ * 34 % 816) && GameSystem.sta.stage.mouseX <= 3 + Math.floor(_loc23_ * 34 % 816) + 34 && GameSystem.sta.stage.mouseY >= 180 + Math.floor(_loc23_ / 24) * 34 && GameSystem.sta.stage.mouseY <= 180 + Math.floor(_loc23_ / 24) * 34 + 34)
               {
                  this.mouseText.alpha = 1;
                  this.mouseText.text = _loc24_.description;
               }
               _loc23_++;
            }
         }
         else
         {
            this.achievementsButton.ChangeAlpha(0.33);
            for each(_loc25_ in this.achievements)
            {
               _loc25_.ChangeAlpha(0);
            }
         }
      }
      
      private function GetEquippedItemX(param1:int) : int
      {
         switch(param1)
         {
            case 0:
               return 550;
            case 1:
               return 550;
            case 2:
               return 584;
            case 3:
               return 584;
            case 4:
               return 618;
            case 5:
               return 618;
            case 6:
               return 652;
            case 7:
               return 652;
            case 8:
               return 686;
            case 9:
               return 686;
            case 10:
               return 720;
            case 11:
               return 720;
            case 12:
               return 754;
            case 13:
               return 754;
            case 14:
               return 788;
            case 15:
               return 788;
            case 16:
               return 516;
            case 17:
               return 516;
            default:
               return 0;
         }
      }
      
      private function GetEquippedItemY(param1:int) : int
      {
         switch(param1)
         {
            case 0:
               return 51;
            case 1:
               return 85;
            case 2:
               return 51;
            case 3:
               return 85;
            case 4:
               return 51;
            case 5:
               return 85;
            case 6:
               return 51;
            case 7:
               return 85;
            case 8:
               return 51;
            case 9:
               return 85;
            case 10:
               return 51;
            case 11:
               return 85;
            case 12:
               return 51;
            case 13:
               return 85;
            case 14:
               return 51;
            case 15:
               return 85;
            case 16:
               return 51;
            case 17:
               return 85;
            default:
               return 0;
         }
      }
      
      private function CheckItemUnlocks() : void
      {
         if(this.items[0] == null && !GameSystem.saveData.data.warriorMouse && GameSystem.saveData.data.warriors.length >= 1)
         {
            this.items[0] = new ShopIcon(0);
            this.newItems++;
         }
         if(this.items[1] == null && !GameSystem.saveData.data.mageMouse && GameSystem.saveData.data.mages.length >= 1)
         {
            this.items[1] = new ShopIcon(1);
            this.newItems++;
         }
         if(this.items[2] == null && !GameSystem.saveData.data.gruntMouse && GameSystem.saveData.data.grunts.length >= 1)
         {
            this.items[2] = new ShopIcon(2);
            this.newItems++;
         }
         if(this.items[3] == null && !GameSystem.saveData.data.assassinMouse && GameSystem.saveData.data.assassins.length >= 1)
         {
            this.items[3] = new ShopIcon(3);
            this.newItems++;
         }
         if(this.items[4] == null && !GameSystem.saveData.data.knightMouse && GameSystem.saveData.data.knights.length >= 1)
         {
            this.items[4] = new ShopIcon(4);
            this.newItems++;
         }
         if(this.items[5] == null && !GameSystem.saveData.data.undeadMouse && GameSystem.saveData.data.undead.length >= 1)
         {
            this.items[5] = new ShopIcon(5);
            this.newItems++;
         }
         if(this.items[6] == null && !GameSystem.saveData.data.cultistMouse && GameSystem.saveData.data.cultists.length >= 1)
         {
            this.items[6] = new ShopIcon(6);
            this.newItems++;
         }
         if(this.items[7] == null && !GameSystem.saveData.data.elderMouse && GameSystem.saveData.data.elders.length >= 1)
         {
            this.items[7] = new ShopIcon(7);
            this.newItems++;
         }
         if(this.items[8] == null && !GameSystem.saveData.data.enemyHPResearchItem && this.GetEnemiesKilled() >= 1000)
         {
            this.items[8] = new ShopIcon(8);
            this.newItems++;
         }
         if(this.items[9] == null && !GameSystem.saveData.data.enemyGoldResearchItem && this.GetEnemiesKilled() >= 10000)
         {
            this.items[9] = new ShopIcon(9);
            this.newItems++;
         }
         if(this.items[10] == null && !GameSystem.saveData.data.enemyLootResearchItem && this.GetEnemiesKilled() >= 100000)
         {
            this.items[10] = new ShopIcon(10);
            this.newItems++;
         }
         if(this.items[11] == null && !GameSystem.saveData.data.mouseDoubler && GameSystem.saveData.data.clicks >= 250)
         {
            this.items[11] = new ShopIcon(11);
            this.newItems++;
         }
         if(this.items[12] == null && !GameSystem.saveData.data.valueIncreaser && GameSystem.saveData.data.lootSold >= 3)
         {
            this.items[12] = new ShopIcon(12);
            this.newItems++;
         }
         if(this.items[13] == null && !GameSystem.saveData.data.warriorMouse2 && GameSystem.saveData.data.warriors.length >= 25)
         {
            this.items[13] = new ShopIcon(13);
            this.newItems++;
         }
         if(this.items[14] == null && !GameSystem.saveData.data.mageMouse2 && GameSystem.saveData.data.mages.length >= 25)
         {
            this.items[14] = new ShopIcon(14);
            this.newItems++;
         }
         if(this.items[15] == null && !GameSystem.saveData.data.gruntMouse2 && GameSystem.saveData.data.grunts.length >= 25)
         {
            this.items[15] = new ShopIcon(15);
            this.newItems++;
         }
         if(this.items[16] == null && !GameSystem.saveData.data.assassinMouse2 && GameSystem.saveData.data.assassins.length >= 25)
         {
            this.items[16] = new ShopIcon(16);
            this.newItems++;
         }
         if(this.items[17] == null && !GameSystem.saveData.data.knightMouse2 && GameSystem.saveData.data.knights.length >= 25)
         {
            this.items[17] = new ShopIcon(17);
            this.newItems++;
         }
         if(this.items[18] == null && !GameSystem.saveData.data.undeadMouse2 && GameSystem.saveData.data.undead.length >= 25)
         {
            this.items[18] = new ShopIcon(18);
            this.newItems++;
         }
         if(this.items[19] == null && !GameSystem.saveData.data.cultistMouse2 && GameSystem.saveData.data.cultists.length >= 25)
         {
            this.items[19] = new ShopIcon(19);
            this.newItems++;
         }
         if(this.items[20] == null && !GameSystem.saveData.data.elderMouse2 && GameSystem.saveData.data.elders.length >= 25)
         {
            this.items[20] = new ShopIcon(20);
            this.newItems++;
         }
         if(this.items[21] == null && !GameSystem.saveData.data.gloryMouse && this.GetEnemiesKilled() >= 5000)
         {
            this.items[21] = new ShopIcon(21);
            this.newItems++;
         }
         if(this.items[22] == null && !GameSystem.saveData.data.lootFinder && GameSystem.saveData.data.lootFound >= 10)
         {
            this.items[22] = new ShopIcon(22);
            this.newItems++;
         }
         if(this.items[23] == null && !GameSystem.saveData.data.mapToHell && GameSystem.saveData.data.undead.length >= 666)
         {
            this.items[23] = new ShopIcon(23);
            this.newItems++;
         }
      }
      
      private function GetEnemiesKilled() : int
      {
         var _loc1_:int = 0;
         _loc1_ = _loc1_ + GameSystem.saveData.data.ratsKilled;
         _loc1_ = _loc1_ + GameSystem.saveData.data.crabsKilled;
         _loc1_ = _loc1_ + GameSystem.saveData.data.batsKilled;
         _loc1_ = _loc1_ + GameSystem.saveData.data.catsKilled;
         _loc1_ = _loc1_ + GameSystem.saveData.data.sharksKilled;
         _loc1_ = _loc1_ + GameSystem.saveData.data.squidsKilled;
         return _loc1_;
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
      
      private function GetTotalItems() : int
      {
         var _loc1_:int = 0;
         if(GameSystem.saveData.data.enemyHPResearchItem)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.enemyGoldResearchItem)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.enemyLootResearchItem)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.warriorMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.mageMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.gruntMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.assassinMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.knightMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.undeadMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.cultistMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.elderMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.mouseDoubler)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.gloryMouse)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.warriorMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.mageMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.gruntMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.assassinMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.knightMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.undeadMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.cultistMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.elderMouse2)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.lootFinder)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.valueIncreaser)
         {
            _loc1_++;
         }
         if(GameSystem.saveData.data.mapToHell)
         {
            _loc1_++;
         }
         return _loc1_;
      }
      
      private function GetFPS(param1:Event) : void
      {
         this.frames++;
         this.timeSinceOpened = getTimer();
         if(this.timeSinceOpened - this.oldTimeSinceOpened >= 1000)
         {
            this.fps = Math.round(this.frames * 1000 / (this.timeSinceOpened - this.oldTimeSinceOpened));
            this.oldTimeSinceOpened = this.timeSinceOpened;
            this.frames = 0;
         }
      }
      
      private function GetClassTotal(param1:int) : String
      {
         if(param1 > 0 && param1 < 10)
         {
            return "0\n0\n0\n" + param1.toString();
         }
         if(param1 >= 10 && param1 < 100)
         {
            return "0\n0\n" + Math.floor(param1 / 10).toString() + "\n" + (param1 % 10).toString();
         }
         if(param1 >= 100 && param1 < 1000)
         {
            return "0\n" + Math.floor(param1 / 100).toString() + "\n" + Math.floor(param1 % 100 / 10).toString() + "\n" + (param1 % 10).toString();
         }
         if(param1 >= 1000 && param1 < 9999)
         {
            return Math.floor(param1 / 1000).toString() + "\n" + Math.floor(param1 % 1000 / 100).toString() + "\n" + Math.floor(param1 % 100 / 10).toString() + "\n" + (param1 % 10).toString();
         }
         if(param1 >= 9999)
         {
            return "9\n9\n9\n9";
         }
         return "0\n0\n0\n0";
      }
      
      private function GetCommaText(param1:String) : String
      {
         if(param1 == "0.")
         {
            return "0";
         }
         var _loc2_:* = new String();
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         var _loc5_:int = _loc3_ - 1;
         while(_loc5_ >= 0)
         {
            _loc2_ = _loc2_ + param1.charAt(_loc4_);
            _loc4_++;
            if(_loc5_ % 3 == 0 && _loc5_ < _loc3_ && _loc5_ != 0)
            {
               _loc2_ = _loc2_ + ",";
            }
            _loc5_--;
         }
         return _loc2_;
      }
      
      private function GetCutText(param1:Number) : String
      {
         var _loc2_:String = new String();
         if(param1 * 100 % 1 == 0)
         {
            _loc2_ = _loc2_ + (param1 * 100).toFixed(0);
         }
         else
         {
            _loc2_ = (param1 * 100).toFixed(2);
         }
         return _loc2_;
      }
      
      private function GetDamageMultiplier(param1:int) : Number
      {
         if(equippedLoot[param1] != null)
         {
            if(equippedLoot[param1].dmgMultiplier > 0)
            {
               return equippedLoot[param1].dmgMultiplier;
            }
         }
         return 1;
      }
      
      private function GetLootChance(param1:int) : Number
      {
         if(equippedLoot[param1] != null)
         {
            if(equippedLoot[param1].lootMultiplier > 0)
            {
               return equippedLoot[param1].lootMultiplier;
            }
         }
         return 1;
      }
      
      private function GetWarriorRage(param1:int) : Number
      {
         if(equippedLoot[0] != null)
         {
            if(equippedLoot[0].classBonus > 0)
            {
               return equippedLoot[0].classBonus * param1;
            }
         }
         return 0;
      }
      
      private function GetMageVision() : Number
      {
         if(equippedLoot[2] != null)
         {
            if(equippedLoot[2].classBonus > 0)
            {
               return equippedLoot[2].classBonus;
            }
         }
         return 1;
      }
      
      private function GetGruntWealth() : Number
      {
         if(equippedLoot[4] != null)
         {
            if(equippedLoot[4].classBonus > 0)
            {
               return equippedLoot[4].classBonus;
            }
         }
         return 1;
      }
      
      private function GetAssassinDoubleStrike() : Boolean
      {
         if(equippedLoot[6] != null)
         {
            if(equippedLoot[6].classBonus > 0 && Math.random() < equippedLoot[6].classBonus - 1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function GetKnightForGlory() : Number
      {
         if(equippedLoot[8] != null)
         {
            if(equippedLoot[8].classBonus > 0)
            {
               return equippedLoot[8].classBonus;
            }
         }
         return 0;
      }
      
      private function GetUndeadRevive() : Boolean
      {
         if(equippedLoot[10] != null)
         {
            if(equippedLoot[10].classBonus > 0)
            {
               Undead.kills++;
               if(Undead.kills % equippedLoot[10].classBonus == 0)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function GetCultistOverMind() : Number
      {
         if(equippedLoot[12] != null)
         {
            if(equippedLoot[12].classBonus > 0)
            {
               return equippedLoot[12].classBonus;
            }
         }
         return 1;
      }
      
      private function GetElderRespectThem() : Number
      {
         if(equippedLoot[14] != null)
         {
            if(equippedLoot[14].classBonus > 0)
            {
               return equippedLoot[14].classBonus;
            }
         }
         return 1;
      }
      
      private function DemonLootDrop() : void
      {
         var _loc1_:Loot = null;
         var _loc2_:LootSprite = null;
         if(!GameSystem.saveData.data.demonslayer)
         {
            _loc1_ = new Loot(17);
            _loc2_ = new LootSprite(new this.demonSoulClass(),this.lootSprites.length);
            this.lootSprites.push(_loc2_);
            this.lootSprites[this.lootSprites.length - 1].addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
            GameSystem.sta.addChild(this.lootSprites[this.lootSprites.length - 1]);
            GameSystem.saveData.data.loot[GameSystem.saveData.data.loot.length] = _loc1_;
            this.loot[this.loot.length] = _loc1_;
            GameSystem.saveData.data.lootFound++;
            GameSystem.saveData.data.demonslayer = true;
         }
      }
      
      private function LootDrop() : void
      {
         var _loc3_:LootSprite = null;
         var _loc1_:int = Math.floor(Math.random() * 20);
         while(_loc1_ == 17)
         {
            _loc1_ = Math.floor(Math.random() * 20);
         }
         var _loc2_:Loot = new Loot(_loc1_);
         switch(_loc1_)
         {
            case 0:
               _loc3_ = new LootSprite(new this.warriorChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 1:
               _loc3_ = new LootSprite(new this.warriorBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 2:
               _loc3_ = new LootSprite(new this.mageChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 3:
               _loc3_ = new LootSprite(new this.mageBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 4:
               _loc3_ = new LootSprite(new this.gruntChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 5:
               _loc3_ = new LootSprite(new this.gruntBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 6:
               _loc3_ = new LootSprite(new this.assassinChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 7:
               _loc3_ = new LootSprite(new this.assassinBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 8:
               _loc3_ = new LootSprite(new this.knightChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 9:
               _loc3_ = new LootSprite(new this.knightBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 10:
               _loc3_ = new LootSprite(new this.undeadChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 11:
               _loc3_ = new LootSprite(new this.undeadBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 12:
               _loc3_ = new LootSprite(new this.cultistChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 13:
               _loc3_ = new LootSprite(new this.cultistBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 14:
               _loc3_ = new LootSprite(new this.elderChestClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 15:
               _loc3_ = new LootSprite(new this.elderBagClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 16:
               _loc3_ = new LootSprite(new this.mouseClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 18:
               _loc3_ = new LootSprite(new this.potionClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
               break;
            case 19:
               _loc3_ = new LootSprite(new this.spellClass(),this.lootSprites.length);
               this.lootSprites.push(_loc3_);
         }
         this.lootSprites[this.lootSprites.length - 1].addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
         GameSystem.sta.addChild(this.lootSprites[this.lootSprites.length - 1]);
         GameSystem.saveData.data.loot[GameSystem.saveData.data.loot.length] = _loc2_;
         this.loot[this.loot.length] = _loc2_;
         GameSystem.saveData.data.lootFound++;
      }
      
      private function GetTimeText(param1:int) : String
      {
         var _loc2_:* = new String();
         if(Math.floor(param1 / (60 * 60)) >= 1)
         {
            _loc2_ = _loc2_ + (Math.floor(param1 / (60 * 60)).toFixed(0) + ":");
         }
         else
         {
            _loc2_ = _loc2_ + "0:";
         }
         if(Math.floor(param1 % (60 * 60) / 60) < 10)
         {
            if(Math.floor(param1 % (60 * 60) / 60) >= 1)
            {
               _loc2_ = _loc2_ + ("0" + Math.floor(param1 % (60 * 60) / 60).toFixed(0) + ":");
            }
            else
            {
               _loc2_ = _loc2_ + "00:";
            }
         }
         else
         {
            _loc2_ = _loc2_ + (Math.floor(param1 % (60 * 60) / 60).toFixed(0) + ":");
         }
         if(param1 % 60 < 10)
         {
            if(param1 % 60 >= 1)
            {
               _loc2_ = _loc2_ + ("0" + (param1 % 60).toFixed(0));
            }
            else
            {
               _loc2_ = _loc2_ + "00";
            }
         }
         else
         {
            _loc2_ = _loc2_ + (param1 % 60).toFixed(0);
         }
         return _loc2_;
      }
      
      private function ShortenValue(param1:Number) : String
      {
         if(param1 >= 100000 && param1 < 1000000)
         {
            return (param1 / 1000).toFixed(1) + "k";
         }
         if(param1 >= 1000000 && param1 < 1000000000)
         {
            return (param1 / 1000000).toFixed(1) + "m";
         }
         if(param1 >= 1000000000 && param1 < 1000000000000)
         {
            return (param1 / 1000000000).toFixed(1) + "b";
         }
         if(param1 >= 1000000000000 && param1 < 1000000000000000)
         {
            return (param1 / 1000000000000).toFixed(1) + "t";
         }
         if(param1 >= 1000000000000000 && param1 < 1000000000000000000)
         {
            return (param1 / 1000000000000000).toFixed(1) + "q";
         }
         return this.GetCommaText(param1.toFixed(0));
      }
      
      private function CheckForClick(param1:MouseEvent) : void
      {
         if(param1.target.alpha == 1)
         {
            param1.target.removeEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
            param1.target.addEventListener(MouseEvent.MOUSE_OUT,this.Revert);
            param1.target.addEventListener(MouseEvent.CLICK,this.Click);
         }
      }
      
      private function CheckForDeleteSaveClick(param1:MouseEvent) : void
      {
         if(param1.target.alpha == 1)
         {
            param1.target.removeEventListener(MouseEvent.MOUSE_OVER,this.CheckForDeleteSaveClick);
            param1.target.addEventListener(MouseEvent.MOUSE_OUT,this.DeleteSaveRevert);
            param1.target.addEventListener(MouseEvent.CLICK,this.DeleteSave);
         }
      }
      
      private function CheckForWebsiteClick(param1:MouseEvent) : void
      {
         if(param1.target.alpha == 1)
         {
            param1.target.removeEventListener(MouseEvent.MOUSE_OVER,this.CheckForWebsiteClick);
            param1.target.addEventListener(MouseEvent.MOUSE_OUT,this.WebsiteRevert);
            param1.target.addEventListener(MouseEvent.CLICK,this.GoToWebsite);
         }
      }
      
      private function CheckForArtistWebsiteClick(param1:MouseEvent) : void
      {
         if(param1.target.alpha == 1)
         {
            param1.target.removeEventListener(MouseEvent.MOUSE_OVER,this.CheckForArtistWebsiteClick);
            param1.target.addEventListener(MouseEvent.MOUSE_OUT,this.ArtistWebsiteRevert);
            param1.target.addEventListener(MouseEvent.CLICK,this.GoToArtistWebsite);
         }
      }
      
      private function Revert(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
      }
      
      private function WebsiteRevert(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForWebsiteClick);
      }
      
      private function ArtistWebsiteRevert(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForArtistWebsiteClick);
      }
      
      private function DeleteSaveRevert(param1:MouseEvent) : void
      {
         param1.target.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForDeleteSaveClick);
      }
      
      private function Click(param1:MouseEvent) : void
      {
         if(GameSystem.lootMenu)
         {
            if(param1.target.y <= 133)
            {
               equippedLoot[this.loot[param1.target.arrayPos].code].equipped = false;
               equippedLoot[this.loot[param1.target.arrayPos].code] = null;
            }
            else if(this.loot[param1.target.arrayPos].code != 18 && this.loot[param1.target.arrayPos].code != 19)
            {
               if(equippedLoot[this.loot[param1.target.arrayPos].code] != null)
               {
                  equippedLoot[this.loot[param1.target.arrayPos].code].equipped = false;
               }
               this.loot[param1.target.arrayPos].equipped = true;
               equippedLoot[this.loot[param1.target.arrayPos].code] = this.loot[param1.target.arrayPos];
            }
            if(this.loot[param1.target.arrayPos].code == 18 && this.potionTimer == 0)
            {
               GameSystem.saveData.data.potionsUsed++;
               this.potionTimer = 900;
               potionBuff = this.loot[param1.target.arrayPos].goldMultiplier;
               this.lootSprites[param1.target.arrayPos].alpha = 0;
               GameSystem.saveData.data.loot[param1.target.arrayPos] = null;
               this.loot[param1.target.arrayPos] = null;
               GameSystem.sta.removeChild(this.lootSprites[param1.target.arrayPos]);
            }
            else if(this.loot[param1.target.arrayPos].code == 19 && this.spellTimer == 0)
            {
               GameSystem.saveData.data.spellsUsed++;
               this.spellTimer = 900;
               spellBuff = this.loot[param1.target.arrayPos].goldMultiplier;
               this.lootSprites[param1.target.arrayPos].alpha = 0;
               GameSystem.saveData.data.loot[param1.target.arrayPos] = null;
               this.loot[param1.target.arrayPos] = null;
               GameSystem.sta.removeChild(this.lootSprites[param1.target.arrayPos]);
            }
         }
         if(GameSystem.shopMenu)
         {
            if(param1.target.y > 133)
            {
               this.loot[param1.target.arrayPos].sold = true;
               this.lootSprites[param1.target.arrayPos].alpha = 0;
               GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + this.loot[param1.target.arrayPos].price;
               GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + this.loot[param1.target.arrayPos].price;
               if(GameSystem.saveData.data.valueIncreaser)
               {
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + this.loot[param1.target.arrayPos].price / 10;
                  GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + this.loot[param1.target.arrayPos].price / 10;
               }
               if(this.loot[param1.target.arrayPos].price >= 10000)
               {
                  GameSystem.saveData.data.tenK = true;
               }
               GameSystem.saveData.data.loot[param1.target.arrayPos] = null;
               this.loot[param1.target.arrayPos] = null;
               GameSystem.sta.removeChild(this.lootSprites[param1.target.arrayPos]);
               GameSystem.saveData.data.lootSold++;
            }
         }
      }
      
      private function CheckPotions() : void
      {
         if(this.potionTimer > 0)
         {
            this.potionTimer--;
         }
         else
         {
            potionBuff = 1;
         }
      }
      
      private function CheckSpells() : void
      {
         if(this.spellTimer > 0)
         {
            this.spellTimer--;
         }
         else
         {
            spellBuff = 1;
         }
      }
      
      private function GoToWebsite(param1:MouseEvent) : void
      {
         GameSystem.saveData.data.visitDevWebsite = true;
         navigateToURL(new URLRequest("http://TrampolineTales.com"));
      }
      
      private function GoToArtistWebsite(param1:MouseEvent) : void
      {
         GameSystem.saveData.data.visitArtistWebsite = true;
         navigateToURL(new URLRequest("http://oryxdesignlab.com/"));
      }
      
      private function DeleteSave(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         this.deleteSaveClicks++;
         if(this.deleteSaveClicks == 5)
         {
            this.deleteSaveClicks = 0;
            _loc2_ = 0;
            while(_loc2_ < this.loot.length)
            {
               this.loot[_loc2_] = null;
               this.lootSprites[_loc2_].alpha = 0;
               this.lootSprites[_loc2_] = null;
               if(_loc2_ < 18)
               {
                  equippedLoot[_loc2_] = null;
               }
               _loc2_++;
            }
            GameSystem.saveData.clear();
            GameSystem.LoadData();
         }
      }
   }
}
