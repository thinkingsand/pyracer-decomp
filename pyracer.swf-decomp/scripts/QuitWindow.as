package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   
   public dynamic class QuitWindow extends MovieClip
   {
       
      
      public var BTT_Quit:SimpleButton;
      
      public var BTT_Restart:SimpleButton;
      
      public var BTT_Cancel:SimpleButton;
      
      public function QuitWindow()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         stop();
      }
      
      internal function frame3() : *
      {
         stop();
      }
   }
}
