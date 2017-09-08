package gl.data.units.enemies
{
   public class Insect extends Enemy
   {
       
      
      public function Insect()
      {
         super();
         hp = EnemyStats.insectMinHealth + Math.floor(Math.random() * (EnemyStats.insectMaxHealth - EnemyStats.insectMinHealth));
         goldDrop = EnemyStats.insectMinGold + Math.floor(Math.random() * (EnemyStats.insectMaxGold - EnemyStats.insectMinGold));
         xpDrop = 50 + Math.floor(Math.random() * 15);
         enemyCode = 7;
      }
   }
}
