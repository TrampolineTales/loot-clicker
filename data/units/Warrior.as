package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Warrior extends Unit
   {
      
      public static var price:Number = 28 * Math.pow(1.1505,GameSystem.saveData.data.warriors.length);
      
      public static var rate:Number = 0.3;
      
      public static var attackSpeed:Number = 1;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
       
      
      public var kills:int = 0;
      
      public function Warrior()
      {
         super();
         level = 1;
         xp = 0;
         price = 28 * Math.pow(1.1505,GameSystem.saveData.data.warriors.length);
         classType = 0;
      }
   }
}
