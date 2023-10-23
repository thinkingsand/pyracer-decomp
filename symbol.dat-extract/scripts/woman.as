package
{
   import flash.display.MovieClip;
   
   public dynamic class woman extends MovieClip
   {
       
      
      public function woman()
      {
         super();
         addFrameScript(4,this.frame5,9,this.frame10);
      }
      
      internal function frame5() : *
      {
         gotoAndPlay(1);
      }
      
      internal function frame10() : *
      {
         gotoAndPlay(6);
      }
   }
}
