package gl.hud.buttons
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import gl.data.units.Assassin;
   import gl.data.units.Cultist;
   import gl.data.units.Elder;
   import gl.data.units.Grunt;
   import gl.data.units.Knight;
   import gl.data.units.Mage;
   import gl.data.units.Undead;
   import gl.data.units.Warrior;
   import gl.system.GameSystem;
   
   public class BuyButton
   {
       
      
      private var buyButtonClass:Class;
      
      private var buyButtonImage:Bitmap;
      
      private var sprite:Sprite;
      
      public function BuyButton(param1:int, param2:int)
      {
         this.buyButtonClass = BuyButton_buyButtonClass;
         this.buyButtonImage = new this.buyButtonClass();
         this.sprite = new Sprite();
         super();
         this.sprite.x = param1;
         this.sprite.y = param2;
         this.sprite.alpha = 0.5;
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
         this.sprite.addChild(this.buyButtonImage);
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
         if(GameSystem.saveData.data.gold >= Warrior.price && this.sprite.x == 2)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Warrior.price;
            GameSystem.saveData.data.warriors.push(new Warrior());
            Warrior.price = 28 * Math.pow(1.1505,GameSystem.saveData.data.warriors.length);
            GameSystem.saveData.flush();
         }
         if(GameSystem.saveData.data.gold >= Mage.price && this.sprite.x == 105)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Mage.price;
            GameSystem.saveData.data.mages.push(new Mage());
            Mage.price = 35 * Math.pow(1.1505,GameSystem.saveData.data.mages.length);
            GameSystem.saveData.flush();
         }
         if(GameSystem.saveData.data.gold >= Grunt.price && this.sprite.x == 208)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Grunt.price;
            GameSystem.saveData.data.grunts.push(new Grunt());
            Grunt.price = 21 * Math.pow(1.1505,GameSystem.saveData.data.grunts.length);
            GameSystem.saveData.flush();
         }
         if(GameSystem.saveData.data.gold >= Assassin.price && this.sprite.x == 311)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Assassin.price;
            GameSystem.saveData.data.assassins.push(new Assassin());
            Assassin.price = 50 * Math.pow(1.1505,GameSystem.saveData.data.assassins.length);
            GameSystem.saveData.flush();
         }
         if(GameSystem.saveData.data.gold >= Knight.price && this.sprite.x == 414)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Knight.price;
            GameSystem.saveData.data.knights.push(new Knight());
            Knight.price = 250 * Math.pow(1.1505,GameSystem.saveData.data.knights.length);
            GameSystem.saveData.flush();
         }
         if(GameSystem.saveData.data.gold >= Undead.price && this.sprite.x == 517)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Undead.price;
            GameSystem.saveData.data.undead.push(new Undead());
            Undead.price = 66 * Math.pow(1.1505,GameSystem.saveData.data.undead.length);
            GameSystem.saveData.flush();
         }
         if(GameSystem.saveData.data.gold >= Cultist.price && this.sprite.x == 620)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Cultist.price;
            GameSystem.saveData.data.cultists.push(new Cultist());
            Cultist.price = 155 * Math.pow(1.1505,GameSystem.saveData.data.cultists.length);
            GameSystem.saveData.flush();
         }
         if(GameSystem.saveData.data.gold >= Elder.price && this.sprite.x == 723)
         {
            GameSystem.saveData.data.gold = GameSystem.saveData.data.gold - Elder.price;
            GameSystem.saveData.data.elders.push(new Elder());
            Elder.price = 999 * Math.pow(1.1505,GameSystem.saveData.data.elders.length);
            GameSystem.saveData.flush();
         }
      }
   }
}
