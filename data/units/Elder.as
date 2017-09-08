package gl.data.units
{
   import gl.system.GameSystem;
   
   public class Elder extends Unit
   {
      
      public static var price:Number = 999 * Math.pow(1.1505,GameSystem.saveData.data.elders.length);
      
      public static var rate:Number = 0.4;
      
      public static var attackSpeed:Number = 1.4;
      
      public static var goldMultiplier:Number = 1;
      
      public static var lootMultiplier:Number = 1;
      
      public static var dmgMultiplier:Number = 1;
       
      
      public function Elder()
      {
         super();
         level = 1;
         xp = 0;
         price = 999 * Math.pow(1.1505,GameSystem.saveData.data.elders.length);
         classType = 7;
      }
   }
}
