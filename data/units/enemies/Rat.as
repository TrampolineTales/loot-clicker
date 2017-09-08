package gl.data.units.enemies
{
   public class Rat extends Enemy
   {
       
      
      public function Rat()
      {
         super();
         hp = EnemyStats.ratMinHealth + Math.floor(Math.random() * (EnemyStats.ratMaxHealth - EnemyStats.ratMinHealth));
         goldDrop = EnemyStats.ratMinGold + Math.floor(Math.random() * (EnemyStats.ratMaxGold - EnemyStats.ratMinGold));
         xpDrop = 5 + Math.floor(Math.random() * 5);
         enemyCode = 0;
      }
   }
}
