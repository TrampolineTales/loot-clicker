package gl.hud.text
{
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class LevelText
   {
      
      private static var textFormat:TextFormat = new TextFormat("ti84Font",16);
       
      
      private var fontClass:Class;
      
      public var textField:TextField;
      
      public function LevelText(param1:int, param2:int)
      {
         this.fontClass = LevelText_fontClass;
         this.textField = new TextField();
         super();
         this.textField.autoSize = TextFieldAutoSize.RIGHT;
         this.textField.mouseEnabled = false;
         this.textField.embedFonts = true;
         this.textField.textColor = 12895428;
         this.textField.defaultTextFormat = textFormat;
         this.textField.x = param1;
         this.textField.y = param2;
      }
      
      public function UpdateTotalLevel(param1:Array) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_ = _loc2_ + param1[_loc3_].level;
            _loc3_++;
         }
         return _loc2_;
      }
   }
}
