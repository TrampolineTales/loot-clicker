package gl.data.units.enemies
{
   public class Cat extends Enemy
   {
       
      
      public function Cat()
      {
         super();
         hp = EnemyStats.catMinHealth + Math.floor(Math.random() * (EnemyStats.catMaxHealth - EnemyStats.catMinHealth));
         goldDrop = EnemyStats.catMinGold + Math.floor(Math.random() * (EnemyStats.catMaxGold - EnemyStats.catMinGold));
         xpDrop = 25 + Math.floor(Math.random() * 15);
         enemyCode = 3;
      }
   }
}
