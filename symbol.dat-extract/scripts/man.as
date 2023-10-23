package
{
   import flash.display.MovieClip;
   
   public dynamic class man extends MovieClip
   {
       
      
      public function man()
      {
         super();
         addFrameScript(4,this.frame5,9,this.frame10);
      }
      
      internal function frame5() : *
      {
         gotoAndPlay(2);
      }
      
      internal function frame10() : *
      {
         gotoAndPlay(6);
      }
   }
}
