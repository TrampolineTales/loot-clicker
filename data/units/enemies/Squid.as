package gl.data.units.enemies
{
   public class Squid extends Enemy
   {
       
      
      public function Squid()
      {
         super();
         hp = EnemyStats.squidMinHealth + Math.floor(Math.random() * (EnemyStats.squidMaxHealth - EnemyStats.squidMinHealth));
         goldDrop = EnemyStats.squidMinGold + Math.floor(Math.random() * (EnemyStats.squidMaxGold - EnemyStats.squidMinGold));
         xpDrop = 55 + Math.floor(Math.random() * 35);
         enemyCode = 5;
      }
   }
}
