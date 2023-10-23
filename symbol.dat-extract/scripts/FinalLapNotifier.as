package
{
   import flash.display.MovieClip;
   
   public dynamic class FinalLapNotifier extends MovieClip
   {
       
      
      public var mc_Final:MovieClip;
      
      public function FinalLapNotifier()
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
