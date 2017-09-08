package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Assassin extends Unit
   {
      
      public static var price:Number = 50 * Math.pow(1.1505,GameSystem.saveData.data.assassins.length);
      
      public static var rate:Number = 0.9;
      
      public static var attackSpeed:Number = 1.6;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
       
      
      public function Assassin()
      {
         super();
         level = 1;
         xp = 0;
         price = 50 * Math.pow(1.1505,GameSystem.saveData.data.assassins.length);
         classType = 3;
      }
   }
}
