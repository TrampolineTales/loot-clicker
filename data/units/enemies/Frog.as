package gl.data.units.enemies
{
   public class Frog extends Enemy
   {
       
      
      public function Frog()
      {
         super();
         hp = EnemyStats.frogMinHealth + Math.floor(Math.random() * (EnemyStats.frogMaxHealth - EnemyStats.frogMinHealth));
         goldDrop = EnemyStats.frogMinGold + Math.floor(Math.random() * (EnemyStats.frogMaxGold - EnemyStats.frogMinGold));
         xpDrop = 50 + Math.floor(Math.random() * 15);
         enemyCode = 6;
      }
   }
}
