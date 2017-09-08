package gl.hud
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class LootSprite extends Sprite
   {
       
      
      public var arrayPos:int;
      
      public function LootSprite(param1:Bitmap, param2:int)
      {
         super();
         this.addChild(param1);
         this.alpha = 0;
         this.arrayPos = param2;
      }
   }
}
