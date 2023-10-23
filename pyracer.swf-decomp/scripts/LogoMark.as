package
{
   import flash.display.MovieClip;
   
   public dynamic class LogoMark extends MovieClip
   {
       
      
      public function LogoMark()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         stop();
      }
   }
}
