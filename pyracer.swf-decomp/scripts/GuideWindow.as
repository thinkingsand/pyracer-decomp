package
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.text.TextField;
   
   public dynamic class GuideWindow extends MovieClip
   {
       
      
      public var txt_Content:TextField;
      
      public function GuideWindow()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7,7,this.frame8,8,this.frame9);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame4() : *
      {
         dispatchEvent(new Event("pauseScreen"));
         stop();
      }
      
      internal function frame5() : *
      {
         stop();
      }
      
      internal function frame6() : *
      {
         stop();
      }
      
      internal function frame7() : *
      {
         stop();
      }
      
      internal function frame8() : *
      {
         stop();
      }
      
      internal function frame9() : *
      {
         stop();
      }
   }
}
