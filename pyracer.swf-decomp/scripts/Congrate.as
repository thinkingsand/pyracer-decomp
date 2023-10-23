package
{
   import flash.display.MovieClip;
   import flash.display.SimpleButton;
   import flash.text.TextField;
   
   public dynamic class Congrate extends MovieClip
   {
       
      
      public var bt_Back:SimpleButton;
      
      public var txt_score:TextField;
      
      public var txt_Text:TextField;
      
      public var txt_Title:TextField;
      
      public function Congrate()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
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
      
      internal function frame4() : *
      {
         stop();
      }
   }
}
