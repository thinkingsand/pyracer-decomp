package
{
   import flash.display.MovieClip;
   
   public dynamic class Mudman extends MovieClip
   {
       
      
      public function Mudman()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      internal function frame1() : *
      {
         stop();
      }
   }
}
