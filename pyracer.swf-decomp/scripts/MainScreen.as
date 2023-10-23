package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public dynamic class MainScreen extends MovieClip
   {
       
      
      public function MainScreen()
      {
         super();
         addFrameScript(19,this.frame20);
      }
      
      public function exitFrame1(param1:Event) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = new Event("PausedScreen1");
         removeEventListener(Event.EXIT_FRAME,this.exitFrame1);
         stop();
         dispatchEvent(_loc2_);
      }
      
      internal function frame20() : *
      {
         addEventListener(Event.EXIT_FRAME,this.exitFrame1);
      }
   }
}
