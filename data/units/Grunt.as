package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Grunt extends Unit
   {
      
      public static var price:Number = 21 * Math.pow(1.1505,GameSystem.saveData.data.grunts.length);
      
      public static var rate:Number = 0.25;
      
      public static var attackSpeed:Number = 0.8;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
       
      
      public function Grunt()
      {
         super();
         level = 1;
         xp = 0;
         price = 21 * Math.pow(1.1505,GameSystem.saveData.data.grunts.length);
         classType = 2;
      }
   }
}
