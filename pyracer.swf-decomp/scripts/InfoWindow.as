package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.events.Event;
   import flash.text.TextField;
   
   public dynamic class InfoWindow extends MovieClip
   {
       
      
      public var bt_Close:SimpleButton;
      
      public var mc_Tiltle:TextField;
      
      public var mc_iNum1:TextField;
      
      public var mc_iCounter1:TextField;
      
      public var mcPic:MovieClip;
      
      public var mc_Health:MovieClip;
      
      public var mc_iCounter:TextField;
      
      public var mc_Pin:MovieClip;
      
      public var mc_Oil:MovieClip;
      
      public var mc_iNum:TextField;
      
      public var mc_Text:TextField;
      
      public var mc_iHit:TextField;
      
      public function InfoWindow()
      {
         super();
         addFrameScript(0,this.frame1,3,this.frame4,4,this.frame5);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame4() : *
      {
      }
      
      internal function frame5() : *
      {
         dispatchEvent(new Event("popupScreen"));
         stop();
      }
   }
}
