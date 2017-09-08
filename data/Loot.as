package gl.data
{
   import gl.hud.HUD;
   
   public class Loot
   {
       
      
      public var code:int;
      
      public var dmgMultiplier:Number = 0;
      
      public var goldMultiplier:Number = 0;
      
      public var lootMultiplier:Number = 0;
      
      public var classBonus:Number = 0;
      
      public var description:String;
      
      public var equipped:Boolean = false;
      
      public var sold:Boolean = false;
      
      public var price:Number = 0;
      
      public function Loot(param1:int)
      {
         this.description = new String();
         super();
         this.code = param1;
         var _loc2_:int = 0;
         HUD.newLoot++;
         switch(this.code)
         {
            case 0:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = Math.floor(Math.random() * 50 + 1) / 10000;
                  }
               }
               break;
            case 1:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 2:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = 1 + Math.floor(Math.random() * 50 + 1) / 1000;
                  }
               }
               break;
            case 3:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 4:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = 1 + Math.floor(Math.random() * 50 + 1) / 10000;
                  }
               }
               break;
            case 5:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 6:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
               }
               break;
            case 7:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 8:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = 0.5 + Math.floor(Math.random() * 100 + 1) / 10;
                  }
               }
               break;
            case 9:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 10:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = 600 + Math.floor(Math.random() * 10 + 1) * 100;
                  }
               }
               break;
            case 11:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 12:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = 1 + Math.floor(Math.random() * 100 + 1) / 100;
                  }
               }
               break;
            case 13:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 14:
               _loc2_ = 1 + Math.floor(Math.random() * 4);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.25 && this.dmgMultiplier == 0)
                  {
                     _loc2_--;
                     this.dmgMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 50 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 20 + 1) / 100;
                  }
                  if(Math.random() <= 0.25 && this.classBonus == 0)
                  {
                     _loc2_--;
                     this.classBonus = 1 + Math.floor(Math.random() * 40 + 1) / 10;
                  }
               }
               break;
            case 15:
               _loc2_ = 1 + Math.floor(Math.random() * 2);
               while(_loc2_ > 0)
               {
                  if(Math.random() <= 0.5 && this.goldMultiplier == 0)
                  {
                     _loc2_--;
                     this.goldMultiplier = 1 + Math.floor(Math.random() * 25 + 1) / 100;
                  }
                  if(Math.random() <= 0.5 && this.lootMultiplier == 0)
                  {
                     _loc2_--;
                     this.lootMultiplier = 1 + Math.floor(Math.random() * 10 + 1) / 100;
                  }
               }
               break;
            case 16:
               this.goldMultiplier = 1 + Math.floor(Math.random() * 500 + 1) / 100;
               break;
            case 17:
               this.goldMultiplier = 1.666;
               break;
            case 18:
               this.goldMultiplier = 1 + Math.floor(Math.random() * 300 + 1) / 100;
               break;
            case 19:
               this.goldMultiplier = 1 + Math.floor(Math.random() * 300 + 1) / 100;
         }
         this.description = this.GetLootStatText();
         this.GetLootPrice();
      }
      
      private function GetLootStatText() : String
      {
         var _loc1_:* = new String();
         switch(this.code)
         {
            case 0:
               _loc1_ = _loc1_ + "Chest of Swords\n(Warriors Only)\n";
               break;
            case 1:
               _loc1_ = _loc1_ + "Bag of Helms\n(Warriors Only)\n";
               break;
            case 2:
               _loc1_ = _loc1_ + "Chest of Wands\n(Mages Only)\n";
               break;
            case 3:
               _loc1_ = _loc1_ + "Bag of Robes\n(Mages Only)\n";
               break;
            case 4:
               _loc1_ = _loc1_ + "Chest of Clubs\n(Grunts Only)\n";
               break;
            case 5:
               _loc1_ = _loc1_ + "Bag of Filth\n(Grunts Only)\n";
               break;
            case 6:
               _loc1_ = _loc1_ + "Chest of Daggers\n(Assassins Only)\n";
               break;
            case 7:
               _loc1_ = _loc1_ + "Bag of Hoods\n(Assassins Only)\n";
               break;
            case 8:
               _loc1_ = _loc1_ + "Chest of Maces\n(Knights Only)\n";
               break;
            case 9:
               _loc1_ = _loc1_ + "Bag of Armor\n(Knights Only)\n";
               break;
            case 10:
               _loc1_ = _loc1_ + "Chest of Scythes\n(Undead Only)\n";
               break;
            case 11:
               _loc1_ = _loc1_ + "Bag of Skulls\n(Undead Only)\n";
               break;
            case 12:
               _loc1_ = _loc1_ + "Chest of Hell\n(Cultists Only)\n";
               break;
            case 13:
               _loc1_ = _loc1_ + "Bag of Blood\n(Cultists Only)\n";
               break;
            case 14:
               _loc1_ = _loc1_ + "Chest of Canes\n(Elders Only)\n";
               break;
            case 15:
               _loc1_ = _loc1_ + "Bag of Dentures\n(Elders Only)\n";
               break;
            case 16:
               _loc1_ = _loc1_ + "Enchanted Mouse\n(Clicks Only)\n";
               break;
            case 17:
               _loc1_ = _loc1_ + "Demon\'s Soul\n(Clicks and Units)\n";
               break;
            case 18:
               _loc1_ = _loc1_ + "Potion of Wealth\n(Clicks Only)\n\n30sec Duration";
               break;
            case 19:
               _loc1_ = _loc1_ + "Spell of Wealth\n(All Units)\n\n30sec Duration";
         }
         if(this.dmgMultiplier > 0)
         {
            _loc1_ = _loc1_ + ("\n+" + ((this.dmgMultiplier - 1) * 100).toFixed(0) + "% Damage");
         }
         if(this.goldMultiplier > 0 && this.code != 16 && this.code != 17 && this.code != 18)
         {
            _loc1_ = _loc1_ + ("\n+" + ((this.goldMultiplier - 1) * 100).toFixed(0) + "% Gold from Enemies");
         }
         else if(this.code == 17)
         {
            _loc1_ = _loc1_ + "\n+66.6% Gold from Enemies and Clicks";
         }
         else if(this.goldMultiplier > 0)
         {
            _loc1_ = _loc1_ + ("\n+" + ((this.goldMultiplier - 1) * 100).toFixed(0) + "% Gold from Clicks");
         }
         if(this.lootMultiplier > 0)
         {
            _loc1_ = _loc1_ + ("\n+" + ((this.lootMultiplier - 1) * 100).toFixed(0) + "% Chance of Loot");
         }
         if(this.classBonus > 0)
         {
            switch(this.code)
            {
               case 0:
                  _loc1_ = _loc1_ + ("\nRAGE:\n+" + this.classBonus.toFixed(4) + " Damage per Kill");
                  break;
               case 2:
                  _loc1_ = _loc1_ + ("\nMAGE VISION:\n+" + ((this.classBonus - 1) * 100).toFixed(1) + "% Chance of Loot");
                  break;
               case 4:
                  _loc1_ = _loc1_ + ("\nWEALTH:\n+" + ((this.classBonus - 1) * 100).toFixed(4) + "% Gold per Grunt\n(For every Class)");
                  break;
               case 6:
                  _loc1_ = _loc1_ + ("\nDOUBLE STRIKE:\n" + ((this.classBonus - 1) * 100).toFixed(0) + "% Chance to strike twice");
                  break;
               case 8:
                  _loc1_ = _loc1_ + ("\nFOR GLORY:\n+" + this.classBonus.toFixed(1) + " Gold per Kill");
                  break;
               case 10:
                  _loc1_ = _loc1_ + ("\nREVIVE:\n+1 Undead per " + this.classBonus.toFixed(0) + " Undead Kills");
                  break;
               case 12:
                  _loc1_ = _loc1_ + ("\nOVERMIND:\n+" + ((this.classBonus - 1) * 100).toFixed(0) + "% Damage");
                  break;
               case 14:
                  _loc1_ = _loc1_ + ("\nRESPECT THEM:\n+" + ((this.classBonus - 1) * 100).toFixed(0) + "% Damage");
            }
         }
         if(!this.equipped)
         {
            _loc1_ = _loc1_ + "\n\nClick to Equip/Unequip\n(While the Loot menu is open)";
         }
         return _loc1_;
      }
      
      private function GetLootPrice() : void
      {
         var _loc1_:Number = 0;
         if(this.dmgMultiplier > 0)
         {
            _loc1_ = _loc1_ + Math.floor((this.dmgMultiplier - 1) * 10000);
         }
         if(this.goldMultiplier > 0)
         {
            _loc1_ = _loc1_ + Math.floor((this.goldMultiplier - 1) * 10000);
         }
         if(this.lootMultiplier > 0)
         {
            _loc1_ = _loc1_ + Math.floor((this.lootMultiplier - 1) * 10000);
         }
         if(this.classBonus > 0)
         {
            _loc1_ = _loc1_ + 1500;
         }
         this.price = _loc1_;
      }
   }
}
