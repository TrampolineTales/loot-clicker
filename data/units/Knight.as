package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Knight extends Unit
   {
      
      public static var price:Number = 250 * Math.pow(1.1505,GameSystem.saveData.data.knights.length);
      
      public static var rate:Number = 0.05;
      
      public static var attackSpeed:Number = 0.8;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
       
      
      public function Knight()
      {
         super();
         level = 1;
         xp = 0;
         price = 250 * Math.pow(1.1505,GameSystem.saveData.data.mages.length);
         classType = 4;
      }
   }
}
