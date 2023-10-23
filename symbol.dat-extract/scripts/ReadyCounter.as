package
{
   import flash.display.MovieClip;
   
   public dynamic class ReadyCounter extends MovieClip
   {
       
      
      public function ReadyCounter()
      {
         super();
         addFrameScript(0,this.frame1,90,this.frame91);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame91() : *
      {
         stop();
      }
   }
}
