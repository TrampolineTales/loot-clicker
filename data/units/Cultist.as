package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Cultist extends Unit
   {
      
      public static var price:Number = 155 * Math.pow(1.1505,GameSystem.saveData.data.cultists.length);
      
      public static var rate:Number = 0.35;
      
      public static var attackSpeed:Number = 1;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
       
      
      public function Cultist()
      {
         super();
         level = 1;
         xp = 0;
         price = 155 * Math.pow(1.1505,GameSystem.saveData.data.cultists.length);
         classType = 6;
      }
   }
}
