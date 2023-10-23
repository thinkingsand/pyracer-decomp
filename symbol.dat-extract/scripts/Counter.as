package
{
   import flash.display.MovieClip;
   
   public dynamic class Counter extends MovieClip
   {
       
      
      public function Counter()
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
