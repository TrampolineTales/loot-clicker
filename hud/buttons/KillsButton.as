package gl.hud.buttons
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import gl.system.GameSystem;
   
   public class KillsButton
   {
       
      
      private var killsButtonClass:Class;
      
      private var killsButtonImage:Bitmap;
      
      private var sprite:Sprite;
      
      public function KillsButton()
      {
         this.killsButtonClass = KillsButton_killsButtonClass;
         this.killsButtonImage = new this.killsButtonClass();
         this.sprite = new Sprite();
         super();
         this.sprite.x = 17;
         this.sprite.y = 133;
         this.sprite.alpha = 1;
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
      }
      
      public function Display() : void
      {
         this.sprite.addChild(this.killsButtonImage);
         GameSystem.sta.addChild(this.sprite);
      }
      
      public function ChangeAlpha(param1:Number) : void
      {
         this.sprite.alpha = param1;
      }
      
      private function CheckForClick(param1:MouseEvent) : void
      {
         this.sprite.removeEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
         this.sprite.addEventListener(MouseEvent.MOUSE_OUT,this.Revert);
         this.sprite.addEventListener(MouseEvent.CLICK,this.Click);
      }
      
      private function Revert(param1:MouseEvent) : void
      {
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
      }
      
      private function Click(param1:MouseEvent) : void
      {
         if(!GameSystem.killsMenu)
         {
            GameSystem.killsMenu = true;
            GameSystem.shopMenu = false;
            GameSystem.lootMenu = false;
            GameSystem.statsMenu = false;
            GameSystem.achievementsMenu = false;
         }
      }
   }
}
