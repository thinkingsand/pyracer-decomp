package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public dynamic class ScreenMask extends MovieClip
   {
       
      
      public var e:Event;
      
      public function ScreenMask()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame10() : *
      {
         this.e = new Event("DarkScreen");
         dispatchEvent(this.e);
      }
      
      internal function frame40() : *
      {
         stop();
      }
   }
}
