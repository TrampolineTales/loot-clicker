package gl.data.units.enemies
{
   public class Bat extends Enemy
   {
       
      
      public function Bat()
      {
         super();
         hp = EnemyStats.batMinHealth + Math.floor(Math.random() * (EnemyStats.batMaxHealth - EnemyStats.batMinHealth));
         goldDrop = EnemyStats.batMinGold + Math.floor(Math.random() * (EnemyStats.batMaxGold - EnemyStats.batMinGold));
         xpDrop = 15 + Math.floor(Math.random() * 10);
         enemyCode = 2;
      }
   }
}
