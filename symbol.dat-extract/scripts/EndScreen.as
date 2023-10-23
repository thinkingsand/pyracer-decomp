package
{
   import flash.display.MovieClip;
   
   public dynamic class EndScreen extends MovieClip
   {
       
      
      public function EndScreen()
      {
         super();
         addFrameScript(0,this.frame1,5,this.frame6);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame6() : *
      {
         stop();
      }
   }
}
