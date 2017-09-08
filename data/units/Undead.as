package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Undead extends Unit
   {
      
      public static var price:Number = 66 * Math.pow(1.1505,GameSystem.saveData.data.undead.length);
      
      public static var rate:Number = 0;
      
      public static var attackSpeed:Number = 0.3;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
      
      public static var kills:int = 0;
       
      
      public function Undead()
      {
         super();
         level = 1;
         xp = 0;
         price = 66 * Math.pow(1.1505,GameSystem.saveData.data.undead.length);
         classType = 5;
      }
   }
}
