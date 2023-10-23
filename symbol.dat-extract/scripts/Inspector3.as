package
{
   import fl.motion.AnimatorFactory3D;
   import fl.motion.MotionBase;
   import fl.motion.motion_internal;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public dynamic class Inspector3 extends MovieClip
   {
       
      
      public var __id0_:MovieClip;
      
      public var __animFactory___id0_af1:AnimatorFactory3D;
      
      public var __animArray___id0_af1:Array;
      
      public var __motion___id0_af1:MotionBase;
      
      public function Inspector3()
      {
         super();
         addFrameScript(0,this.frame1,67,this.frame68);
         if(this.__animFactory___id0_af1 == null)
         {
            this.__animArray___id0_af1 = new Array();
            this.__motion___id0_af1 = new MotionBase();
            this.__motion___id0_af1.duration = 13;
            this.__motion___id0_af1.overrideTargetTransform();
            this.__motion___id0_af1.addPropertyArray("x",[0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("y",[0,42.8042,85.6083,128.412,171.217,214.021,256.825,299.629,342.433,385.237,428.042,470.846,513.65]);
            this.__motion___id0_af1.addPropertyArray("scaleX",[1,0.957763,0.915525,0.873288,0.831051,0.788814,0.746577,0.704339,0.662102,0.619865,0.577627,0.53539,0.493153]);
            this.__motion___id0_af1.addPropertyArray("scaleY",[1,0.957457,0.914914,0.872372,0.829829,0.787286,0.744744,0.702201,0.659658,0.617115,0.574573,0.53203,0.489487]);
            this.__motion___id0_af1.addPropertyArray("skewX",[0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("skewY",[0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("z",[0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("rotationX",[0]);
            this.__motion___id0_af1.addPropertyArray("rotationY",[0]);
            this.__motion___id0_af1.addPropertyArray("rotationZ",[0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("blendMode",["normal"]);
            this.__motion___id0_af1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion___id0_af1.motion_internal::transformationPoint = new Point(18,10.35);
            this.__motion___id0_af1.motion_internal::initialPosition = [18,-513.65,0];
            this.__motion___id0_af1.is3D = true;
            this.__motion___id0_af1.motion_internal::spanStart = 1;
            this.__animArray___id0_af1.push(this.__motion___id0_af1);
            this.__motion___id0_af1 = new MotionBase();
            this.__motion___id0_af1.duration = 38;
            this.__motion___id0_af1.overrideTargetTransform();
            this.__motion___id0_af1.addPropertyArray("x",[0]);
            this.__motion___id0_af1.addPropertyArray("y",[0]);
            this.__motion___id0_af1.addPropertyArray("scaleX",[0.506483]);
            this.__motion___id0_af1.addPropertyArray("scaleY",[0.482209]);
            this.__motion___id0_af1.addPropertyArray("skewX",[0]);
            this.__motion___id0_af1.addPropertyArray("skewY",[0]);
            this.__motion___id0_af1.addPropertyArray("z",[0]);
            this.__motion___id0_af1.addPropertyArray("rotationX",[0]);
            this.__motion___id0_af1.addPropertyArray("rotationY",[0]);
            this.__motion___id0_af1.addPropertyArray("rotationZ",[0]);
            this.__motion___id0_af1.addPropertyArray("blendMode",["normal"]);
            this.__motion___id0_af1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion___id0_af1.motion_internal::transformationPoint = new Point(17.95,10.25);
            this.__motion___id0_af1.motion_internal::initialPosition = [18,1.35,0];
            this.__motion___id0_af1.is3D = true;
            this.__motion___id0_af1.motion_internal::spanStart = 14;
            this.__animArray___id0_af1.push(this.__motion___id0_af1);
            this.__motion___id0_af1 = new MotionBase();
            this.__motion___id0_af1.duration = 16;
            this.__motion___id0_af1.overrideTargetTransform();
            this.__motion___id0_af1.addPropertyArray("x",[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("y",[0,-34.3333,-68.6667,-103,-137.333,-171.667,-206,-240.333,-274.667,-309,-343.333,-377.667,-412,-446.333,-480.667,-515]);
            this.__motion___id0_af1.addPropertyArray("scaleX",[0.506524,0.539422,0.572321,0.605219,0.638118,0.671016,0.703914,0.736813,0.769711,0.80261,0.835508,0.868406,0.901305,0.934203,0.967102,1]);
            this.__motion___id0_af1.addPropertyArray("scaleY",[0.489992,0.523993,0.557993,0.591994,0.625994,0.659995,0.693995,0.727996,0.761996,0.795997,0.829997,0.863998,0.897998,0.931999,0.965999,1]);
            this.__motion___id0_af1.addPropertyArray("skewX",[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("skewY",[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("z",[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("rotationX",[0]);
            this.__motion___id0_af1.addPropertyArray("rotationY",[0]);
            this.__motion___id0_af1.addPropertyArray("rotationZ",[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
            this.__motion___id0_af1.addPropertyArray("blendMode",["normal"]);
            this.__motion___id0_af1.addPropertyArray("cacheAsBitmap",[false]);
            this.__motion___id0_af1.motion_internal::transformationPoint = new Point(17.95,10.3);
            this.__motion___id0_af1.motion_internal::initialPosition = [18,1.35,0];
            this.__motion___id0_af1.is3D = true;
            this.__motion___id0_af1.motion_internal::spanStart = 52;
            this.__animArray___id0_af1.push(this.__motion___id0_af1);
            this.__animFactory___id0_af1 = new AnimatorFactory3D(null,this.__animArray___id0_af1);
            this.__animFactory___id0_af1.sceneName = "lap3 notifier";
            this.__animFactory___id0_af1.addTargetInfo(this,"__id0_",0,true,0,true,null,-1);
         }
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame68() : *
      {
         stop();
      }
   }
}
