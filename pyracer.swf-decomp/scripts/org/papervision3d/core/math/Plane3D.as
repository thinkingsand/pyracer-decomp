package org.papervision3d.core.math
{
   import org.papervision3d.core.geom.renderables.Vertex3D;
   import org.papervision3d.core.math.util.ClassificationUtil;
   
   public class Plane3D
   {
      
      private static var _yUP:org.papervision3d.core.math.Number3D = new org.papervision3d.core.math.Number3D(0,1,0);
      
      private static var _zUP:org.papervision3d.core.math.Number3D = new org.papervision3d.core.math.Number3D(0,0,1);
      
      protected static var flipPlane:org.papervision3d.core.math.Plane3D = new org.papervision3d.core.math.Plane3D();
       
      
      public var normal:org.papervision3d.core.math.Number3D;
      
      public var d:Number;
      
      internal var eps:Number = 0.01;
      
      public function Plane3D(param1:org.papervision3d.core.math.Number3D = null, param2:org.papervision3d.core.math.Number3D = null)
      {
         super();
         if(Boolean(param1) && Boolean(param2))
         {
            this.normal = param1;
            this.d = -org.papervision3d.core.math.Number3D.dot(param1,param2);
         }
         else
         {
            this.normal = new org.papervision3d.core.math.Number3D();
            this.d = 0;
         }
      }
      
      public static function fromCoefficients(param1:Number, param2:Number, param3:Number, param4:Number) : org.papervision3d.core.math.Plane3D
      {
         var _loc5_:org.papervision3d.core.math.Plane3D;
         (_loc5_ = new org.papervision3d.core.math.Plane3D()).setCoefficients(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function fromNormalAndPoint(param1:*, param2:*) : org.papervision3d.core.math.Plane3D
      {
         var _loc3_:org.papervision3d.core.math.Number3D = param1 is org.papervision3d.core.math.Number3D ? param1 : new org.papervision3d.core.math.Number3D(param1.x,param1.y,param1.z);
         var _loc4_:org.papervision3d.core.math.Number3D = param2 is org.papervision3d.core.math.Number3D ? param2 : new org.papervision3d.core.math.Number3D(param2.x,param2.y,param2.z);
         return new org.papervision3d.core.math.Plane3D(_loc3_,_loc4_);
      }
      
      public static function fromThreePoints(param1:*, param2:*, param3:*) : org.papervision3d.core.math.Plane3D
      {
         var _loc4_:org.papervision3d.core.math.Plane3D = new org.papervision3d.core.math.Plane3D();
         var _loc5_:org.papervision3d.core.math.Number3D = param1 is org.papervision3d.core.math.Number3D ? param1 : new org.papervision3d.core.math.Number3D(param1.x,param1.y,param1.z);
         var _loc6_:org.papervision3d.core.math.Number3D = param2 is org.papervision3d.core.math.Number3D ? param2 : new org.papervision3d.core.math.Number3D(param2.x,param2.y,param2.z);
         var _loc7_:org.papervision3d.core.math.Number3D = param3 is org.papervision3d.core.math.Number3D ? param3 : new org.papervision3d.core.math.Number3D(param3.x,param3.y,param3.z);
         _loc4_.setThreePoints(_loc5_,_loc6_,_loc7_);
         return _loc4_;
      }
      
      public function clone() : org.papervision3d.core.math.Plane3D
      {
         return org.papervision3d.core.math.Plane3D.fromCoefficients(this.normal.x,this.normal.y,this.normal.z,this.d);
      }
      
      public function isCoplanar(param1:org.papervision3d.core.math.Plane3D) : Boolean
      {
         return Math.abs(this.normal.x - param1.normal.x) < this.eps && Math.abs(this.normal.y - param1.normal.y) < this.eps && Math.abs(this.normal.z - param1.normal.z) < this.eps && Math.abs(this.d - param1.d) < this.eps;
      }
      
      public function isCoplanarOpposite(param1:org.papervision3d.core.math.Plane3D) : Boolean
      {
         flipPlane.normal.z = -param1.normal.z;
         flipPlane.normal.y = -param1.normal.y;
         flipPlane.normal.x = -param1.normal.x;
         flipPlane.d = param1.d;
         return flipPlane.isCoplanar(param1);
      }
      
      public function getFlip() : org.papervision3d.core.math.Plane3D
      {
         var _loc1_:org.papervision3d.core.math.Plane3D = org.papervision3d.core.math.Plane3D.fromThreePoints(new org.papervision3d.core.math.Number3D(),new org.papervision3d.core.math.Number3D(),new org.papervision3d.core.math.Number3D());
         _loc1_.normal.z = -this.normal.z;
         _loc1_.normal.y = -this.normal.y;
         _loc1_.normal.x = -this.normal.x;
         _loc1_.d = this.d;
         return _loc1_;
      }
      
      public function getTempFlip() : org.papervision3d.core.math.Plane3D
      {
         flipPlane.normal.z = -this.normal.z;
         flipPlane.normal.y = -this.normal.y;
         flipPlane.normal.x = -this.normal.x;
         flipPlane.d = this.d;
         return flipPlane;
      }
      
      public function getIntersectionLineNumbers(param1:org.papervision3d.core.math.Number3D, param2:org.papervision3d.core.math.Number3D) : org.papervision3d.core.math.Number3D
      {
         var _loc3_:Number = this.normal.x * param1.x + this.normal.y * param1.y + this.normal.z * param1.z - this.d;
         var _loc4_:Number = this.normal.x * param2.x + this.normal.y * param2.y + this.normal.z * param2.z - this.d;
         var _loc5_:Number = _loc4_ / (_loc4_ - _loc3_);
         return new org.papervision3d.core.math.Number3D(param2.x + (param1.x - param2.x) * _loc5_,param2.y + (param1.y - param2.y) * _loc5_,param2.z + (param1.z - param2.z) * _loc5_);
      }
      
      public function getIntersectionLine(param1:Vertex3D, param2:Vertex3D) : Vertex3D
      {
         var _loc3_:Number = this.normal.x * param1.x + this.normal.y * param1.y + this.normal.z * param1.z - this.d;
         var _loc4_:Number = this.normal.x * param2.x + this.normal.y * param2.y + this.normal.z * param2.z - this.d;
         var _loc5_:Number = _loc4_ / (_loc4_ - _loc3_);
         return new Vertex3D(param2.x + (param1.x - param2.x) * _loc5_,param2.y + (param1.y - param2.y) * _loc5_,param2.z + (param1.z - param2.z) * _loc5_);
      }
      
      public function closestPointOnPlane(param1:org.papervision3d.core.math.Number3D, param2:org.papervision3d.core.math.Number3D) : org.papervision3d.core.math.Number3D
      {
         var _loc3_:Number = org.papervision3d.core.math.Number3D.dot(this.normal,org.papervision3d.core.math.Number3D.sub(param1,param2));
         var _loc4_:org.papervision3d.core.math.Number3D = param1.clone();
         _loc4_.x -= _loc3_ * this.normal.x;
         _loc4_.y -= _loc3_ * this.normal.y;
         _loc4_.z -= _loc3_ * this.normal.z;
         return _loc4_;
      }
      
      public function distance(param1:*) : Number
      {
         var _loc2_:org.papervision3d.core.math.Number3D = param1 is Vertex3D ? param1.toNumber3D() : param1;
         return org.papervision3d.core.math.Number3D.dot(_loc2_,this.normal) + this.d;
      }
      
      public function vertDistance(param1:Vertex3D) : Number
      {
         return param1.x * this.normal.x + this.normal.y * param1.y + param1.z * this.normal.z + this.d;
      }
      
      public function normalize() : void
      {
         var _loc1_:org.papervision3d.core.math.Number3D = this.normal;
         var _loc2_:Number = Math.sqrt(_loc1_.x * _loc1_.x + _loc1_.y * _loc1_.y + _loc1_.z * _loc1_.z);
         _loc1_.x /= _loc2_;
         _loc1_.y /= _loc2_;
         _loc1_.z /= _loc2_;
         this.d /= _loc2_;
      }
      
      public function setCoefficients(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.normal.x = param1;
         this.normal.y = param2;
         this.normal.z = param3;
         this.d = param4;
         this.normalize();
      }
      
      public function setNormalAndPoint(param1:org.papervision3d.core.math.Number3D, param2:org.papervision3d.core.math.Number3D) : void
      {
         this.normal = param1;
         this.d = -org.papervision3d.core.math.Number3D.dot(param1,param2);
      }
      
      public function setThreePoints(param1:org.papervision3d.core.math.Number3D, param2:org.papervision3d.core.math.Number3D, param3:org.papervision3d.core.math.Number3D) : void
      {
         var _loc4_:org.papervision3d.core.math.Number3D = org.papervision3d.core.math.Number3D.sub(param2,param1);
         var _loc5_:org.papervision3d.core.math.Number3D = org.papervision3d.core.math.Number3D.sub(param3,param1);
         this.normal = org.papervision3d.core.math.Number3D.cross(_loc4_,_loc5_);
         this.normal.normalize();
         this.d = -org.papervision3d.core.math.Number3D.dot(this.normal,param1);
      }
      
      public function pointOnSide(param1:org.papervision3d.core.math.Number3D) : int
      {
         var _loc2_:Number = this.distance(param1);
         if(_loc2_ < 0)
         {
            return ClassificationUtil.BACK;
         }
         if(_loc2_ > 0)
         {
            return ClassificationUtil.FRONT;
         }
         return ClassificationUtil.COINCIDING;
      }
      
      public function projectPoints(param1:Array, param2:org.papervision3d.core.math.Number3D = null) : void
      {
         var _loc8_:* = undefined;
         var _loc3_:Number = org.papervision3d.core.math.Number3D.dot(_yUP,this.normal);
         var _loc4_:org.papervision3d.core.math.Number3D = Math.abs(_loc3_) > 0.99 ? _zUP : _yUP;
         var _loc5_:org.papervision3d.core.math.Number3D;
         (_loc5_ = org.papervision3d.core.math.Number3D.cross(_loc4_,this.normal)).normalize();
         (_loc4_ = org.papervision3d.core.math.Number3D.cross(this.normal,_loc5_)).normalize();
         var _loc6_:Matrix3D = new Matrix3D([_loc5_.x,_loc4_.x,this.normal.x,0,_loc5_.y,_loc4_.y,this.normal.y,0,_loc5_.z,_loc4_.z,this.normal.z,0,0,0,0,1]);
         if(param2)
         {
            _loc6_ = Matrix3D.multiply(Matrix3D.translationMatrix(param2.x,param2.y,param2.z),_loc6_);
         }
         var _loc7_:org.papervision3d.core.math.Number3D = new org.papervision3d.core.math.Number3D();
         for each(_loc8_ in param1)
         {
            _loc7_.x = _loc8_["x"];
            _loc7_.y = _loc8_["y"];
            _loc7_.z = _loc8_["z"];
            Matrix3D.multiplyVector(_loc6_,_loc7_);
            _loc8_["x"] = _loc7_.x;
            _loc8_["y"] = _loc7_.y;
            _loc8_["z"] = _loc7_.z;
         }
      }
      
      public function toString() : String
      {
         return "[a:" + this.normal.x + " b:" + this.normal.y + " c:" + this.normal.z + " d:" + this.d + "]";
      }
   }
}
