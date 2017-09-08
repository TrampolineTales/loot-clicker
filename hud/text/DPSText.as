package gl.hud.text
{
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import gl.data.units.Assassin;
   import gl.data.units.Cultist;
   import gl.data.units.Elder;
   import gl.data.units.Grunt;
   import gl.data.units.Knight;
   import gl.data.units.Mage;
   import gl.data.units.Undead;
   import gl.data.units.Warrior;
   import gl.hud.HUD;
   import gl.system.GameSystem;
   
   public class DPSText
   {
      
      private static var textFormat:TextFormat = new TextFormat("ti84Font",16);
       
      
      private var fontClass:Class;
      
      public var textField:TextField;
      
      public function DPSText(param1:int, param2:int)
      {
         this.fontClass = DPSText_fontClass;
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
      
      public function UpdateTotalDPS(param1:Array) : Number
      {
         var _loc2_:Number = 0;
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(param1[_loc3_].classType == 0)
            {
               _loc2_ = _loc2_ + (10 + param1[_loc3_].level + this.GetWarriorRage(param1[_loc3_].kills)) * Warrior.attackSpeed;
               if(HUD.equippedLoot[0] != null)
               {
                  if(HUD.equippedLoot[0].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[0].dmgMultiplier - 1) * (10 + param1[_loc3_].level + this.GetWarriorRage(param1[_loc3_].kills)) * Warrior.attackSpeed;
                  }
               }
            }
            if(param1[_loc3_].classType == 1)
            {
               _loc2_ = _loc2_ + (22 + param1[_loc3_].level * 18) * Mage.attackSpeed;
               if(HUD.equippedLoot[2] != null)
               {
                  if(HUD.equippedLoot[2].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[2].dmgMultiplier - 1) * (22 + param1[_loc3_].level * 18) * Mage.attackSpeed;
                  }
               }
            }
            if(param1[_loc3_].classType == 2)
            {
               _loc2_ = _loc2_ + (8.5 + param1[_loc3_].level * 0.5) * Grunt.attackSpeed;
               if(HUD.equippedLoot[4] != null)
               {
                  if(HUD.equippedLoot[4].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[4].dmgMultiplier - 1) * (8.5 + param1[_loc3_].level * 0.5) * Grunt.attackSpeed;
                  }
               }
            }
            if(param1[_loc3_].classType == 3)
            {
               _loc2_ = _loc2_ + (10 + param1[_loc3_].level * 10) * Assassin.attackSpeed;
               if(HUD.equippedLoot[6] != null)
               {
                  if(HUD.equippedLoot[6].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[6].dmgMultiplier - 1) * (10 + param1[_loc3_].level * 10) * Assassin.attackSpeed;
                  }
               }
            }
            if(param1[_loc3_].classType == 4)
            {
               _loc2_ = _loc2_ + (16 + param1[_loc3_].level * 2) * Knight.attackSpeed;
               if(HUD.equippedLoot[8] != null)
               {
                  if(HUD.equippedLoot[8].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[8].dmgMultiplier - 1) * (16 + param1[_loc3_].level * 2) * Knight.attackSpeed;
                  }
               }
            }
            if(param1[_loc3_].classType == 5)
            {
               _loc2_ = _loc2_ + (8 + param1[_loc3_].level) * Undead.attackSpeed;
               if(HUD.equippedLoot[10] != null)
               {
                  if(HUD.equippedLoot[10].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[10].dmgMultiplier - 1) * (8 + param1[_loc3_].level) * Undead.attackSpeed;
                  }
               }
            }
            if(param1[_loc3_].classType == 6)
            {
               _loc2_ = _loc2_ + (10 + (GameSystem.saveData.data.cultists.length - 1) + param1[_loc3_].level * 1.2) * Cultist.attackSpeed;
               if(HUD.equippedLoot[12] != null)
               {
                  if(HUD.equippedLoot[12].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[12].dmgMultiplier - 1) * (10 + (GameSystem.saveData.data.cultists.length - 1) + param1[_loc3_].level * 1.2) * Cultist.attackSpeed;
                  }
                  if(HUD.equippedLoot[12].classBonus > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[12].classBonus - 1) * (10 + (GameSystem.saveData.data.cultists.length - 1) + param1[_loc3_].level * 1.2) * Cultist.attackSpeed;
                  }
               }
            }
            if(param1[_loc3_].classType == 7)
            {
               _loc2_ = _loc2_ + (65 + param1[_loc3_].level * 10) * Elder.attackSpeed;
               if(HUD.equippedLoot[14] != null)
               {
                  if(HUD.equippedLoot[14].dmgMultiplier > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[14].dmgMultiplier - 1) * (65 + param1[_loc3_].level * 10) * Elder.attackSpeed;
                  }
                  if(HUD.equippedLoot[14].classBonus > 0)
                  {
                     _loc2_ = _loc2_ + (HUD.equippedLoot[14].classBonus - 1) * (65 + param1[_loc3_].level * 10) * Elder.attackSpeed;
                  }
               }
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function GetWarriorRage(param1:int) : Number
      {
         if(HUD.equippedLoot[0] != null)
         {
            if(HUD.equippedLoot[0].classBonus > 0)
            {
               return HUD.equippedLoot[0].classBonus * param1;
            }
         }
         return 0;
      }
   }
}
