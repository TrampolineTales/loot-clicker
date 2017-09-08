package gl.hud.text
{
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   
   public class FightText
   {
      
      private static var textFormat:TextFormat = new TextFormat("ti84Font",16);
       
      
      private var fontClass:Class;
      
      public var textField:TextField;
      
      public function FightText(param1:int, param2:int)
      {
         this.fontClass = FightText_fontClass;
         this.textField = new TextField();
         super();
         this.textField.autoSize = TextFieldAutoSize.LEFT;
         this.textField.mouseEnabled = false;
         this.textField.embedFonts = true;
         this.textField.textColor = 12895428;
         this.textField.defaultTextFormat = textFormat;
         this.textField.x = param1;
         this.textField.y = param2;
         this.textField.alpha = 0;
      }
   }
}
