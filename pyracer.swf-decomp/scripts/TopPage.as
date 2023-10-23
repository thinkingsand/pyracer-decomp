package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public dynamic class TopPage extends MovieClip
   {
       
      
      public function TopPage()
      {
         super();
         addFrameScript(167,this.frame168);
      }
      
      internal function frame168() : *
      {
         stop();
         stage.dispatchEvent(new Event("END_LOGO"));
      }
   }
}
