package
{
   import flash.display.MovieClip;
   
   public dynamic class Wrongway_Character extends MovieClip
   {
       
      
      public var mc_wrong:MovieClip;
      
      public function Wrongway_Character()
      {
         super();
         addFrameScript(0,this.frame1,24,this.frame25,39,this.frame40);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame25() : *
      {
         stop();
      }
      
      internal function frame40() : *
      {
         stop();
      }
   }
}
