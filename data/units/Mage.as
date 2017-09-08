package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Mage extends Unit
   {
      
      public static var price:Number = 35 * Math.pow(1.1505,GameSystem.saveData.data.mages.length);
      
      public static var rate:Number = 0.65;
      
      public static var attackSpeed:Number = 0.3;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
       
      
      public function Mage()
      {
         super();
         level = 1;
         xp = 0;
         price = 35 * Math.pow(1.1505,GameSystem.saveData.data.mages.length);
         classType = 1;
      }
   }
}
