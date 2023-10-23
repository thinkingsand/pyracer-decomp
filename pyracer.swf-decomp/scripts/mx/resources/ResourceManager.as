package mx.resources
{
   import flash.utils.getDefinitionByName;
   import mx.core.Singleton;
   import mx.core.mx_internal;
   
   public class ResourceManager
   {
      
      mx_internal static const VERSION:String = "4.0.0.14159";
      
      private static var implClassDependency:mx.resources.ResourceManagerImpl;
      
      private static var instance:mx.resources.IResourceManager;
       
      
      public function ResourceManager()
      {
         super();
      }
      
      public static function getInstance() : mx.resources.IResourceManager
      {
         if(!instance)
         {
            if(!Singleton.getClass("mx.resources::IResourceManager"))
            {
               Singleton.registerClass("mx.resources::IResourceManager",Class(getDefinitionByName("mx.resources::ResourceManagerImpl")));
            }
            try
            {
               instance = IResourceManager(Singleton.getInstance("mx.resources::IResourceManager"));
            }
            catch(e:Error)
            {
               instance = new mx.resources.ResourceManagerImpl();
            }
         }
         return instance;
      }
   }
}
