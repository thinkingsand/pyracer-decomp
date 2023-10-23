package
{
   import flash.display.MovieClip;
   
   public dynamic class Lighteman extends MovieClip
   {
       
      
      public function Lighteman()
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
