package gl.data.units.enemies
{
   public class Crab extends Enemy
   {
       
      
      public function Crab()
      {
         super();
         hp = EnemyStats.crabMinHealth + Math.floor(Math.random() * (EnemyStats.crabMaxHealth - EnemyStats.crabMinHealth));
         goldDrop = EnemyStats.crabMinGold + Math.floor(Math.random() * (EnemyStats.crabMaxGold - EnemyStats.crabMinGold));
         xpDrop = 10 + Math.floor(Math.random() * 10);
         enemyCode = 1;
      }
   }
}
