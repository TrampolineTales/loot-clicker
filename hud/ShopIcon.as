package gl.hud
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import gl.system.GameSystem;
   
   public class ShopIcon
   {
       
      
      private var mouseClass:Class;
      
      private var warriorMouseClass:Class;
      
      private var mageMouseClass:Class;
      
      private var gruntMouseClass:Class;
      
      private var assassinMouseClass:Class;
      
      private var knightMouseClass:Class;
      
      private var undeadMouseClass:Class;
      
      private var cultistMouseClass:Class;
      
      private var elderMouseClass:Class;
      
      private var hpResearchClass:Class;
      
      private var goldResearchClass:Class;
      
      private var lootResearchClass:Class;
      
      private var mapClass:Class;
      
      private var valueClass:Class;
      
      private var lootFinderClass:Class;
      
      private var mouseImage:Bitmap;
      
      private var warriorMouseImage:Bitmap;
      
      private var mageMouseImage:Bitmap;
      
      private var gruntMouseImage:Bitmap;
      
      private var assassinMouseImage:Bitmap;
      
      private var knightMouseImage:Bitmap;
      
      private var undeadMouseImage:Bitmap;
      
      private var cultistMouseImage:Bitmap;
      
      private var elderMouseImage:Bitmap;
      
      private var hpResearchImage:Bitmap;
      
      private var goldResearchImage:Bitmap;
      
      private var lootResearchImage:Bitmap;
      
      private var mapImage:Bitmap;
      
      private var valueImage:Bitmap;
      
      private var lootFinderImage:Bitmap;
      
      private var sprite:Sprite;
      
      public var stock:int;
      
      public var itemCode:int;
      
      private var cost:Number;
      
      public var description:String;
      
      public function ShopIcon(param1:int)
      {
         this.mouseClass = ShopIcon_mouseClass;
         this.warriorMouseClass = ShopIcon_warriorMouseClass;
         this.mageMouseClass = ShopIcon_mageMouseClass;
         this.gruntMouseClass = ShopIcon_gruntMouseClass;
         this.assassinMouseClass = ShopIcon_assassinMouseClass;
         this.knightMouseClass = ShopIcon_knightMouseClass;
         this.undeadMouseClass = ShopIcon_undeadMouseClass;
         this.cultistMouseClass = ShopIcon_cultistMouseClass;
         this.elderMouseClass = ShopIcon_elderMouseClass;
         this.hpResearchClass = ShopIcon_hpResearchClass;
         this.goldResearchClass = ShopIcon_goldResearchClass;
         this.lootResearchClass = ShopIcon_lootResearchClass;
         this.mapClass = ShopIcon_mapClass;
         this.valueClass = ShopIcon_valueClass;
         this.lootFinderClass = ShopIcon_lootFinderClass;
         this.mouseImage = new this.mouseClass();
         this.warriorMouseImage = new this.warriorMouseClass();
         this.mageMouseImage = new this.mageMouseClass();
         this.gruntMouseImage = new this.gruntMouseClass();
         this.assassinMouseImage = new this.assassinMouseClass();
         this.knightMouseImage = new this.knightMouseClass();
         this.undeadMouseImage = new this.undeadMouseClass();
         this.cultistMouseImage = new this.cultistMouseClass();
         this.elderMouseImage = new this.elderMouseClass();
         this.hpResearchImage = new this.hpResearchClass();
         this.goldResearchImage = new this.goldResearchClass();
         this.lootResearchImage = new this.lootResearchClass();
         this.mapImage = new this.mapClass();
         this.valueImage = new this.valueClass();
         this.lootFinderImage = new this.lootFinderClass();
         this.sprite = new Sprite();
         super();
         this.itemCode = param1;
         switch(this.itemCode)
         {
            case 0:
               this.sprite.addChild(this.warriorMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Warrior Mouse:\n\n+0.1g per Click\nper Warrior" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 1:
               this.sprite.addChild(this.mageMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Mage Mouse:\n\n+0.1g per Click\nper Mage" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 2:
               this.sprite.addChild(this.gruntMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Grunt Mouse:\n\n+0.1g per Click\nper Grunt" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 3:
               this.sprite.addChild(this.assassinMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Assassin Mouse:\n\n+0.1g per Click\nper Assassin" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 4:
               this.sprite.addChild(this.knightMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Knight Mouse:\n\n+0.1g per Click\nper Knight" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 5:
               this.sprite.addChild(this.undeadMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Undead Mouse:\n\n+0.1g per Click\nper Undead" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 6:
               this.sprite.addChild(this.cultistMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Cultist Mouse:\n\n+0.1g per Click\nper Cultist" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 7:
               this.sprite.addChild(this.elderMouseImage);
               this.stock = 1;
               this.cost = 500;
               this.description = "Elder Mouse:\n\n+0.1g per Click\nper Elder" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 8:
               this.sprite.addChild(this.hpResearchImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Health Research:\n\nDisplays the Min. Health\nand Max. Health of enemies" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 9:
               this.sprite.addChild(this.goldResearchImage);
               this.stock = 1;
               this.cost = 5000;
               this.description = "Gold Research:\n\nDisplays the Min. Gold\nand Max. Gold of enemies" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 10:
               this.sprite.addChild(this.lootResearchImage);
               this.stock = 1;
               this.cost = 50000;
               this.description = "Loot Research\n\nDisplays the chance of\nan enemy dropping Loot" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 11:
               this.sprite.addChild(this.mouseImage);
               this.stock = 1;
               this.cost = 2000;
               this.description = "Mouse Doubler:\n\nDoubles the Gold\ngranted from Clicks\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 12:
               this.sprite.addChild(this.valueImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Value Increaser:\n\n+10% Gold from selling Loot\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 13:
               this.sprite.addChild(this.warriorMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Warrior Mouse II:\n\n+0.5g per Click\nper Warrior" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 14:
               this.sprite.addChild(this.mageMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Mage Mouse II:\n\n+0.5g per Click\nper Mage" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 15:
               this.sprite.addChild(this.gruntMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Grunt Mouse II:\n\n+0.5g per Click\nper Grunt" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 16:
               this.sprite.addChild(this.assassinMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Assassin Mouse II:\n\n+0.5g per Click\nper Assassin" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 17:
               this.sprite.addChild(this.knightMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Knight Mouse II:\n\n+0.5g per Click\nper Knight" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 18:
               this.sprite.addChild(this.undeadMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Undead Mouse II:\n\n+0.5g per Click\nper Undead" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 19:
               this.sprite.addChild(this.cultistMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Cultist Mouse II:\n\n+0.5g per Click\nper Cultist" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 20:
               this.sprite.addChild(this.elderMouseImage);
               this.stock = 1;
               this.cost = 1000;
               this.description = "Elder Mouse II:\n\n+0.5g per Click\nper Elder" + "\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 21:
               this.sprite.addChild(this.mouseImage);
               this.stock = 1;
               this.cost = 2500;
               this.description = "Glory Mouse:\n\n+0.5g per 1000 Kills\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 22:
               this.sprite.addChild(this.lootFinderImage);
               this.stock = 1;
               this.cost = 100000;
               this.description = "Loot Finder:\n\n+1 Loot per 60sec\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
               break;
            case 23:
               this.sprite.addChild(this.mapImage);
               this.stock = 1;
               this.cost = 666666;
               this.description = "Map to Hell:\n\nSends your Undead to Hell\nfor a boss fight\n\nCost: " + this.GetCommaText(this.cost.toFixed(0)) + "g";
         }
         this.sprite.alpha = 0;
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
         GameSystem.sta.addChild(this.sprite);
      }
      
      public function ChangeAlpha(param1:int) : void
      {
         this.sprite.alpha = param1;
      }
      
      public function GetAlpha() : int
      {
         return this.sprite.alpha;
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
      
      public function Rearrange(param1:int, param2:int) : void
      {
         this.sprite.x = param1;
         this.sprite.y = param2;
      }
      
      private function CheckForClick(param1:MouseEvent) : void
      {
         if(this.sprite.alpha == 1)
         {
            this.sprite.removeEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
            this.sprite.addEventListener(MouseEvent.MOUSE_OUT,this.Revert);
            this.sprite.addEventListener(MouseEvent.CLICK,this.Click);
         }
      }
      
      private function Revert(param1:MouseEvent) : void
      {
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
      }
      
      private function Click(param1:MouseEvent) : void
      {
         switch(this.itemCode)
         {
            case 0:
               if(this.stock > 0 && !GameSystem.saveData.data.warriorMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.warriorMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 1:
               if(this.stock > 0 && !GameSystem.saveData.data.mageMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.mageMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 2:
               if(this.stock > 0 && !GameSystem.saveData.data.gruntMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.gruntMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 3:
               if(this.stock > 0 && !GameSystem.saveData.data.assassinMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.assassinMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 4:
               if(this.stock > 0 && !GameSystem.saveData.data.knightMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.knightMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 5:
               if(this.stock > 0 && !GameSystem.saveData.data.undeadMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.undeadMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 6:
               if(this.stock > 0 && !GameSystem.saveData.data.cultistMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.cultistMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 7:
               if(this.stock > 0 && !GameSystem.saveData.data.elderMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.elderMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 8:
               if(this.stock > 0 && !GameSystem.saveData.data.enemyHPResearchItem && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.enemyHPResearchItem = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 9:
               if(this.stock > 0 && !GameSystem.saveData.data.enemyGoldResearchItem && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.enemyGoldResearchItem = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 10:
               if(this.stock > 0 && !GameSystem.saveData.data.enemyLootResearchItem && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.enemyLootResearchItem = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 11:
               if(this.stock > 0 && !GameSystem.saveData.data.mouseDoubler && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.mouseDoubler = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 12:
               if(this.stock > 0 && !GameSystem.saveData.data.valueIncreaser && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.valueIncreaser = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 13:
               if(this.stock > 0 && !GameSystem.saveData.data.warriorMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.warriorMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 14:
               if(this.stock > 0 && !GameSystem.saveData.data.mageMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.mageMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 15:
               if(this.stock > 0 && !GameSystem.saveData.data.gruntMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.gruntMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 16:
               if(this.stock > 0 && !GameSystem.saveData.data.assassinMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.assassinMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 17:
               if(this.stock > 0 && !GameSystem.saveData.data.knightMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.knightMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 18:
               if(this.stock > 0 && !GameSystem.saveData.data.undeadMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.undeadMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 19:
               if(this.stock > 0 && !GameSystem.saveData.data.cultistMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.cultistMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 20:
               if(this.stock > 0 && !GameSystem.saveData.data.elderMouse2 && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.elderMouse2 = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 21:
               if(this.stock > 0 && !GameSystem.saveData.data.gloryMouse && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.gloryMouse = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 22:
               if(this.stock > 0 && !GameSystem.saveData.data.lootFinder && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.lootFinder = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
               break;
            case 23:
               if(this.stock > 0 && !GameSystem.saveData.data.mapToHell && GameSystem.saveData.data.gold >= this.cost)
               {
                  GameSystem.saveData.data.mapToHell = true;
                  GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - this.cost;
                  this.stock--;
               }
         }
         this.sprite.alpha = 0;
      }
   }
}
