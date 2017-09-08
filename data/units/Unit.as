package gl.data.units
{
   import gl.data.units.enemies.Bat;
   import gl.data.units.enemies.Camel;
   import gl.data.units.enemies.Cat;
   import gl.data.units.enemies.Crab;
   import gl.data.units.enemies.Enemy;
   import gl.data.units.enemies.Frog;
   import gl.data.units.enemies.Ghost;
   import gl.data.units.enemies.Insect;
   import gl.data.units.enemies.Lizard;
   import gl.data.units.enemies.Rat;
   import gl.data.units.enemies.Shark;
   import gl.data.units.enemies.Spirit;
   import gl.data.units.enemies.Squid;
   
   public class Unit
   {
       
      
      public var xp:Number = 0;
      
      public var level:int = 1;
      
      public var currentEnemy:Enemy;
      
      public var battleTimer:int = 0;
      
      public var classType:int;
      
      public function Unit()
      {
         super();
      }
      
      public static function ChooseEnemy(param1:int) : Enemy
      {
         if(param1 > 1 && param1 <= 2)
         {
            switch(Math.floor(Math.random() * 2))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
            }
         }
         if(param1 > 2 && param1 <= 3)
         {
            switch(Math.floor(Math.random() * 3))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
            }
         }
         if(param1 > 3 && param1 <= 4)
         {
            switch(Math.floor(Math.random() * 4))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
               case 3:
                  return new Cat();
            }
         }
         if(param1 > 4 && param1 <= 5)
         {
            switch(Math.floor(Math.random() * 6))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
               case 3:
                  return new Cat();
               case 4:
                  return new Shark();
               case 5:
                  return new Squid();
            }
         }
         if(param1 > 5 && param1 <= 6)
         {
            switch(Math.floor(Math.random() * 8))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
               case 3:
                  return new Cat();
               case 4:
                  return new Shark();
               case 5:
                  return new Squid();
               case 6:
                  return new Frog();
               case 7:
                  return new Insect();
            }
         }
         if(param1 > 6 && param1 <= 7)
         {
            switch(Math.floor(Math.random() * 9))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
               case 3:
                  return new Cat();
               case 4:
                  return new Shark();
               case 5:
                  return new Squid();
               case 6:
                  return new Frog();
               case 7:
                  return new Insect();
               case 8:
                  return new Lizard();
            }
         }
         if(param1 > 7 && param1 <= 8)
         {
            switch(Math.floor(Math.random() * 10))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
               case 3:
                  return new Cat();
               case 4:
                  return new Shark();
               case 5:
                  return new Squid();
               case 6:
                  return new Frog();
               case 7:
                  return new Insect();
               case 8:
                  return new Lizard();
               case 9:
                  return new Camel();
            }
         }
         if(param1 > 8 && param1 <= 9)
         {
            switch(Math.floor(Math.random() * 11))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
               case 3:
                  return new Cat();
               case 4:
                  return new Shark();
               case 5:
                  return new Squid();
               case 6:
                  return new Frog();
               case 7:
                  return new Insect();
               case 8:
                  return new Lizard();
               case 9:
                  return new Camel();
               case 10:
                  return new Ghost();
            }
         }
         if(param1 > 9)
         {
            switch(Math.floor(Math.random() * 12))
            {
               case 0:
                  return new Rat();
               case 1:
                  return new Crab();
               case 2:
                  return new Bat();
               case 3:
                  return new Cat();
               case 4:
                  return new Shark();
               case 5:
                  return new Squid();
               case 6:
                  return new Frog();
               case 7:
                  return new Insect();
               case 8:
                  return new Lizard();
               case 9:
                  return new Camel();
               case 10:
                  return new Ghost();
               case 11:
                  return new Spirit();
            }
         }
         return new Rat();
      }
   }
}
