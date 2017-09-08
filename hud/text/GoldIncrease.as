package gl.hud.text
{
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import gl.system.GameSystem;
   
   public class GoldIncrease
   {
      
      private static var textFormat:TextFormat = new TextFormat("ti84Font",16);
       
      
      private var fontClass:Class;
      
      private var goldText:TextField;
      
      private var timer:Timer;
      
      public function GoldIncrease(param1:Number)
      {
         this.fontClass = GoldIncrease_fontClass;
         this.goldText = new TextField();
         this.timer = new Timer(33,0);
         super();
         this.goldText.autoSize = TextFieldAutoSize.LEFT;
         this.goldText.embedFonts = true;
         this.goldText.mouseEnabled = false;
         this.goldText.defaultTextFormat = textFormat;
         this.goldText.textColor = 12895428;
         this.goldText.text = "+" + this.GetCommaText(Math.floor(param1).toFixed(0)) + "g";
         this.goldText.alpha = 1;
         this.goldText.x = 5 + Math.random() * (150 - this.goldText.width);
         this.goldText.y = 42;
         GameSystem.sta.addChild(this.goldText);
         this.timer.addEventListener(TimerEvent.TIMER,this.MoveGold);
         this.timer.start();
      }
      
      private function MoveGold(param1:TimerEvent) : void
      {
         if(this.goldText.alpha > 0)
         {
            this.goldText.alpha = this.goldText.alpha - 0.0625;
            this.goldText.y = this.goldText.y + 2;
         }
         else
         {
            GameSystem.sta.removeChild(this.goldText);
            this.timer.stop();
         }
      }
      
      private function GetCommaText(param1:String) : String
      {
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
   }
}
