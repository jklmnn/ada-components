
with Componolit.Gneiss.Log;
with Componolit.Gneiss.Log.Client;
with Completeness;

package body Component with
   SPARK_Mode
is

   Capability : Cai.Types.Capability;
   Log        : Cai.Log.Client_Session;

   procedure Construct (C : Cai.Types.Capability)
   is
   begin
      Capability := C;
      if not Cai.Log.Initialized (Log) then
         Cai.Log.Client.Initialize (Log, Capability, "Completeness");
      end if;
      if not Cai.Log.Initialized (Log) then
         Main.Vacate (Capability, Main.Failure);
         return;
      end if;
      Event;
   end Construct;

   procedure Destruct
   is
   begin
      if Cai.Log.Initialized (Log) then
         Cai.Log.Client.Finalize (Log);
      end if;
   end Destruct;

   procedure Event
   is
   begin
      Completeness.Initialize (Capability, 1.0, "dev0");
      Completeness.Event (Log);
   end Event;

end Component;
