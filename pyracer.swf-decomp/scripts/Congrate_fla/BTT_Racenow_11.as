package Congrate_fla
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public dynamic class BTT_Racenow_11 extends MovieClip
   {
       
      
      public function BTT_Racenow_11()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function over(param1:MouseEvent) : void
      {
         gotoAndStop("over");
      }
      
      public function out(param1:MouseEvent) : void
      {
         gotoAndStop("out");
      }
      
      public function down(param1:MouseEvent) : void
      {
         gotoAndStop("hit");
      }
      
      public function up(param1:MouseEvent) : void
      {
         gotoAndStop("over");
      }
      
      internal function frame1() : *
      {
         buttonMode = true;
         mouseChildren = false;
         gotoAndStop("out");
         addEventListener(MouseEvent.MOUSE_OVER,this.over);
         addEventListener(MouseEvent.MOUSE_OUT,this.out);
         addEventListener(MouseEvent.MOUSE_DOWN,this.down);
         addEventListener(MouseEvent.MOUSE_UP,this.up);
      }
   }
}
