package gl.hud.buttons
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import gl.hud.HUD;
   import gl.hud.text.GoldIncrease;
   import gl.system.GameSystem;
   
   public class FightButton
   {
       
      
      private var fightButtonClass:Class;
      
      private var fightButtonImage:Bitmap;
      
      private var sprite:Sprite;
      
      public function FightButton()
      {
         this.fightButtonClass = FightButton_fightButtonClass;
         this.fightButtonImage = new this.fightButtonClass();
         this.sprite = new Sprite();
         super();
         this.sprite.x = 5;
         this.sprite.y = 5;
         this.sprite.alpha = 0.5;
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
      }
      
      public function Display() : void
      {
         this.sprite.addChild(this.fightButtonImage);
         GameSystem.sta.addChild(this.sprite);
      }
      
      private function CheckForClick(param1:MouseEvent) : void
      {
         this.sprite.alpha = 1;
         this.sprite.removeEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
         this.sprite.addEventListener(MouseEvent.MOUSE_OUT,this.Revert);
         this.sprite.addEventListener(MouseEvent.CLICK,this.Click);
      }
      
      private function Revert(param1:MouseEvent) : void
      {
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
         this.sprite.alpha = 0.5;
      }
      
      private function Click(param1:MouseEvent) : void
      {
         GameSystem.saveData.data.clickTimer = 0;
         var _loc2_:Number = 1;
         if(GameSystem.saveData.data.warriorMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.warriors.length * 0.1;
         }
         if(GameSystem.saveData.data.mageMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.mages.length * 0.1;
         }
         if(GameSystem.saveData.data.gruntMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.grunts.length * 0.1;
         }
         if(GameSystem.saveData.data.assassinMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.assassins.length * 0.1;
         }
         if(GameSystem.saveData.data.knightMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.knights.length * 0.1;
         }
         if(GameSystem.saveData.data.undeadMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.undead.length * 0.1;
         }
         if(GameSystem.saveData.data.cultistMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.cultists.length * 0.1;
         }
         if(GameSystem.saveData.data.elderMouse)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.elders.length * 0.1;
         }
         if(GameSystem.saveData.data.mouseDoubler)
         {
            _loc2_ = _loc2_ * 2;
         }
         if(GameSystem.saveData.data.warriorMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.warriors.length * 0.5;
         }
         if(GameSystem.saveData.data.mageMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.mages.length * 0.5;
         }
         if(GameSystem.saveData.data.gruntMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.grunts.length * 0.5;
         }
         if(GameSystem.saveData.data.assassinMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.assassins.length * 0.5;
         }
         if(GameSystem.saveData.data.knightMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.knights.length * 0.5;
         }
         if(GameSystem.saveData.data.undeadMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.undead.length * 0.5;
         }
         if(GameSystem.saveData.data.cultistMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.cultists.length * 0.5;
         }
         if(GameSystem.saveData.data.elderMouse2)
         {
            _loc2_ = _loc2_ + GameSystem.saveData.data.elders.length * 0.5;
         }
         if(GameSystem.saveData.data.gloryMouse)
         {
            _loc2_ = _loc2_ + this.GetEnemiesKilled() * 0.5 / 1000;
         }
         if(HUD.equippedLoot[16] != null)
         {
            _loc2_ = _loc2_ * HUD.equippedLoot[16].goldMultiplier;
         }
         if(HUD.equippedLoot[17] != null)
         {
            _loc2_ = _loc2_ * HUD.equippedLoot[17].goldMultiplier;
         }
         _loc2_ = _loc2_ * HUD.potionBuff;
         var _loc3_:GoldIncrease = new GoldIncrease(_loc2_);
         GameSystem.saveData.data.gold = GameSystem.saveData.data.gold + _loc2_;
         GameSystem.saveData.data.lifetimeGold = GameSystem.saveData.data.lifetimeGold + _loc2_;
         GameSystem.saveData.data.goldFromFarming = GameSystem.saveData.data.goldFromFarming + _loc2_;
         GameSystem.saveData.data.clicks++;
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
   }
}
