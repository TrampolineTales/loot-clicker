package gl
{
   import com.newgrounds.API;
   import com.newgrounds.components.FlashAd;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import gl.hud.HUD;
   import gl.system.GameSystem;

   public dynamic class Main extends MovieClip
   {


      private var gameTimer:Timer;

      private var hud:HUD;

      private var playButtonClass:Class;

      private var versionNumberClass:Class;

      private var playButtonImage:Bitmap;

      private var versionNumberImage:Bitmap;

      private var flashAd:FlashAd;

      private var playButton:Sprite;

      public function Main()
      {
         this.gameTimer = new Timer(1000 / 30,0);
         this.hud = new HUD();
         this.playButtonClass = Main_playButtonClass;
         this.versionNumberClass = Main_versionNumberClass;
         this.playButtonImage = new this.playButtonClass();
         this.versionNumberImage = new this.versionNumberClass();
         this.flashAd = new FlashAd();
         this.playButton = new Sprite();
         super();
         if(stage)
         {
            this.init();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
         GameSystem.GetStage(stage);
         GameSystem.LoadData();
         API.connect(/*REMOVED API INFORMATION*/);
         this.flashAd.x = 411 - this.flashAd.width / 2;
         this.flashAd.y = 300 - this.flashAd.height / 2;
         GameSystem.sta.addChild(this.flashAd);
         this.playButton.addChild(this.playButtonImage);
         this.playButton.x = 411 - this.playButton.width / 2;
         this.playButton.y = 500;
         this.playButton.addEventListener(MouseEvent.CLICK,this.Play);
         GameSystem.sta.addChild(this.playButton);
         this.versionNumberImage.x = 822 - this.versionNumberImage.width;
         this.versionNumberImage.y = 600 - this.versionNumberImage.height;
         GameSystem.sta.addChild(this.versionNumberImage);
         GameSystem.saveData.data.achievements = 0;
         this.gameTimer.addEventListener(TimerEvent.TIMER,this.GameLoop);
         this.gameTimer.start();
      }

      private function init(param1:Event = null) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
      }

      private function GameLoop(param1:TimerEvent) : void
      {
         if(!GameSystem.titleScreen)
         {
            this.hud.Update();
         }
      }

      private function Play(param1:MouseEvent) : void
      {
         this.hud.Display();
         GameSystem.sta.removeChild(this.flashAd);
         GameSystem.sta.removeChild(this.playButton);
         GameSystem.sta.removeChild(this.versionNumberImage);
         GameSystem.titleScreen = false;
      }
   }
}
