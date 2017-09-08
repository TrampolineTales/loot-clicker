package gl.data.units.enemies
{
   public class Spirit extends Enemy
   {
       
      
      public function Spirit()
      {
         super();
         hp = EnemyStats.spiritMinHealth + Math.floor(Math.random() * (EnemyStats.spiritMaxHealth - EnemyStats.spiritMinHealth));
         goldDrop = EnemyStats.spiritMinGold + Math.floor(Math.random() * (EnemyStats.spiritMaxGold - EnemyStats.spiritMinGold));
         xpDrop = 250 + Math.floor(Math.random() * 150);
         enemyCode = 11;
      }
   }
}
