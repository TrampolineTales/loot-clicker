package gl.hud.buttons
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import gl.system.GameSystem;
   
   public class ShopButton
   {
       
      
      private var shopButtonClass:Class;
      
      private var shopButtonImage:Bitmap;
      
      private var sprite:Sprite;
      
      public function ShopButton()
      {
         this.shopButtonClass = ShopButton_shopButtonClass;
         this.shopButtonImage = new this.shopButtonClass();
         this.sprite = new Sprite();
         super();
         this.sprite.x = 152;
         this.sprite.y = 133;
         this.sprite.alpha = 0.33;
         this.sprite.addEventListener(MouseEvent.MOUSE_OVER,this.CheckForClick);
      }
      
      public function Display() : void
      {
         this.sprite.addChild(this.shopButtonImage);
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
         if(!GameSystem.shopMenu)
         {
            GameSystem.killsMenu = false;
            GameSystem.shopMenu = true;
            GameSystem.lootMenu = false;
            GameSystem.statsMenu = false;
            GameSystem.achievementsMenu = false;
         }
      }
   }
}
