package gl.data.units.enemies
{
   public class Shark extends Enemy
   {
       
      
      public function Shark()
      {
         super();
         hp = EnemyStats.sharkMinHealth + Math.floor(Math.random() * (EnemyStats.sharkMaxHealth - EnemyStats.sharkMinHealth));
         goldDrop = EnemyStats.sharkMinGold + Math.floor(Math.random() * (EnemyStats.sharkMaxGold - EnemyStats.sharkMinGold));
         xpDrop = 50 + Math.floor(Math.random() * 25);
         enemyCode = 4;
      }
   }
}
