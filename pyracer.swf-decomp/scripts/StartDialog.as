package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public dynamic class StartDialog extends MovieClip
   {
       
      
      public var BTT_Racenow:MovieClip;
      
      public function StartDialog()
      {
         super();
         addFrameScript(7,this.frame8,14,this.frame15);
      }
      
      public function startDlgFrame(param1:Event) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = new Event("startDlgEnd");
         removeEventListener(Event.EXIT_FRAME,this.startDlgFrame);
         stop();
         dispatchEvent(_loc2_);
      }
      
      internal function frame8() : *
      {
         addEventListener(Event.EXIT_FRAME,this.startDlgFrame);
      }
      
      internal function frame15() : *
      {
         stop();
      }
   }
}
