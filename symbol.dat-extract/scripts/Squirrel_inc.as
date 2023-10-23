package
{
   import flash.display.MovieClip;
   
   public dynamic class Squirrel_inc extends MovieClip
   {
       
      
      public function Squirrel_inc()
      {
         super();
         addFrameScript(0,this.frame1,67,this.frame68,112,this.frame113);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame68() : *
      {
         visible = false;
         stop();
      }
      
      internal function frame113() : *
      {
         visible = false;
         stop();
      }
   }
}
