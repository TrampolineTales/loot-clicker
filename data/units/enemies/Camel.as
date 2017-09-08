package gl.data.units.enemies
{
   public class Camel extends Enemy
   {
       
      
      public function Camel()
      {
         super();
         hp = EnemyStats.camelMinHealth + Math.floor(Math.random() * (EnemyStats.camelMaxHealth - EnemyStats.camelMinHealth));
         goldDrop = EnemyStats.camelMinGold + Math.floor(Math.random() * (EnemyStats.camelMaxGold - EnemyStats.camelMinGold));
         xpDrop = 75 + Math.floor(Math.random() * 25);
         enemyCode = 9;
      }
   }
}
