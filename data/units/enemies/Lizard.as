package gl.data.units.enemies
{
   public class Lizard extends Enemy
   {
       
      
      public function Lizard()
      {
         super();
         hp = EnemyStats.lizardMinHealth + Math.floor(Math.random() * (EnemyStats.lizardMaxHealth - EnemyStats.lizardMinHealth));
         goldDrop = EnemyStats.lizardMinGold + Math.floor(Math.random() * (EnemyStats.lizardMaxGold - EnemyStats.lizardMinGold));
         xpDrop = 45 + Math.floor(Math.random() * 15);
         enemyCode = 8;
      }
   }
}
