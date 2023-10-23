package mx.collections
{
   import mx.core.mx_internal;
   
   public class CursorBookmark
   {
      
      mx_internal static const VERSION:String = "4.0.0.14159";
      
      private static var _first:mx.collections.CursorBookmark;
      
      private static var _last:mx.collections.CursorBookmark;
      
      private static var _current:mx.collections.CursorBookmark;
       
      
      private var _value:Object;
      
      public function CursorBookmark(param1:Object)
      {
         super();
         this._value = param1;
      }
      
      public static function get FIRST() : mx.collections.CursorBookmark
      {
         if(!_first)
         {
            _first = new mx.collections.CursorBookmark("${F}");
         }
         return _first;
      }
      
      public static function get LAST() : mx.collections.CursorBookmark
      {
         if(!_last)
         {
            _last = new mx.collections.CursorBookmark("${L}");
         }
         return _last;
      }
      
      public static function get CURRENT() : mx.collections.CursorBookmark
      {
         if(!_current)
         {
            _current = new mx.collections.CursorBookmark("${C}");
         }
         return _current;
      }
      
      public function get value() : Object
      {
         return this._value;
      }
      
      public function getViewIndex() : int
      {
         return -1;
      }
   }
}
