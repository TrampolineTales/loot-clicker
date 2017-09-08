package gl.data.units.enemies
{
   public class Ghost extends Enemy
   {
       
      
      public function Ghost()
      {
         super();
         hp = EnemyStats.ghostMinHealth + Math.floor(Math.random() * (EnemyStats.ghostMaxHealth - EnemyStats.ghostMinHealth));
         goldDrop = EnemyStats.ghostMinGold + Math.floor(Math.random() * (EnemyStats.ghostMaxGold - EnemyStats.ghostMinGold));
         xpDrop = 100 + Math.floor(Math.random() * 30);
         enemyCode = 10;
      }
   }
}
