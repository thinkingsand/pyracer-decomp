package mx.messaging.messages
{
   import flash.utils.IDataOutput;
   import flash.utils.IExternalizable;
   
   public class CommandMessageExt extends mx.messaging.messages.CommandMessage implements IExternalizable
   {
       
      
      private var _message:mx.messaging.messages.CommandMessage;
      
      public function CommandMessageExt(param1:mx.messaging.messages.CommandMessage = null)
      {
         super();
         _message = param1;
      }
      
      override public function get messageId() : String
      {
         if(_message != null)
         {
            return _message.messageId;
         }
         return super.messageId;
      }
      
      override public function writeExternal(param1:IDataOutput) : void
      {
         if(_message != null)
         {
            _message.writeExternal(param1);
         }
         else
         {
            super.writeExternal(param1);
         }
      }
   }
}
